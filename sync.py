

import os
from web3 import Web3
import json
import mysql.connector
from time import sleep
from datetime import datetime
from collections.abc import Mapping
import sys



with open('config.json', 'r') as f: #load config
    config = json.load(f)

rpc = config["rpc"]
hub_addr = config["hub_addr"]
v2_abi_block = config["v2_abi_block"]
v3_abi_block = config["v3_abi_block"]
db_host = config["db_host"]
db_user = config["db_user"]
db_password = config["db_password"]
db_name = config["db_name"]
first_block_to_sync = config["start_block"]
rpc_max_retries = config["rpc_max_retries"]
rpc_retry_delay = config["rpc_retry_delay"]
deadlock_max_retries = config["deadlock_max_retries"]
deadlock_retry_delay = config["deadlock_retry_delay"]
sync_window = config["sync_window"]
contract_events_v1 = config["contract_events_v1"]
contract_functions_v1 = config["contract_functions_v1"]
contract_events_v2 = config["contract_events_v2"]
contract_functions_v2 = config["contract_functions_v2"]
contract_events_v3 = config["contract_events_v3"]
contract_functions_v3 = config["contract_functions_v3"]
sync_other_tx = config["sync_other_tx"]
sync_pause = config["sync_pause"]
chain_id = config["chain_id"]
sync_lag = config["sync_lag"]
sync_missed_range = config["sync_missed_range"] #this is a low effort way to sync missed tx and events, i'd not recommend to use it
to_missed_range = config["to_missed_range"]

tables_events = ['assertion_assertion_created','commit_manager_v1_commit_submitted','commit_manager_v1_u1_commit_submitted','commit_manager_v1_u1_state_finalized','content_asset_asset_burnt','content_asset_asset_minted','content_asset_asset_state_update_canceled','content_asset_asset_state_updated','content_asset_asset_storing_period_extended','content_asset_asset_update_payment_increased','content_asset_payment_increased','content_asset_storage_transfer','identity_identity_created','identity_identity_deleted','identity_storage_key_added','identity_storage_key_removed','profile_ask_updated','profile_profile_created','profile_profile_deleted','proof_manager_v1_proof_submitted','proof_manager_v1_u1_proof_submitted','service_agreement_v1_commit_submitted','service_agreement_v1_proof_submitted','service_agreement_v1_service_agreement_v1_created','service_agreement_v1_service_agreement_v1_extended','service_agreement_v1_service_agreement_v1_reward_raised','service_agreement_v1_service_agreement_v1_terminated','service_agreement_v1_service_agreement_v1_update_reward_raised','sharding_table_node_added','sharding_table_node_removed','staking_accumulated_operator_fee_increased','staking_accumulated_operator_fee_updated','staking_reward_added','staking_stake_increased','staking_stake_withdrawal_started','staking_stake_withdrawn','token_approval','token_transfer','hub_asset_storage_changed','hub_contract_changed','hub_new_asset_storage','hub_new_contract','staking_operator_fee_change_finished','staking_operator_fee_change_started','staking_reward_collected','staking_shares_burned','staking_shares_minted','profile_accumulated_operator_fee_restaked','profile_accumulated_operator_fee_withdrawal_started','profile_accumulated_operator_fee_withdrawn','paranet_knowledge_asset_submitted_to_paranet','paranet_paranet_metadata_updated','paranet_paranet_registered','paranet_paranet_service_added','paranet_paranet_service_registered','paranet_paranet_service_metadata_updated','staking_stake_withdrawal_canceled']
tables_txs = ['assertion_tx','commit_manager_v1_tx','commit_manager_v1_u1_tx','content_asset_storage_tx','content_asset_tx','hub_tx','identity_storage_tx','identity_tx','other_tx','profile_tx','proof_manager_v1_tx','proof_manager_v1_u1_tx','service_agreement_v1_tx','sharding_table_tx','staking_tx','token_tx','paranet_tx']#,'profile_storage_tx']


                                           
 #    # ###### #      #####  ###### #####  
 #    # #      #      #    # #      #    # 
 ###### #####  #      #    # #####  #    # 
 #    # #      #      #####  #      #####  
 #    # #      #      #      #      #   #  
 #    # ###### ###### #      ###### #    # 

def to_dict(list_of_attribute_dicts):
    list_of_dicts = [dict(item) for item in list_of_attribute_dicts]
    return list_of_dicts

   
def unhexify_dict(input_dict):
    unhexified_dict = {}
    for key, value in input_dict.items():
        if isinstance(value, bytes):
            hex_string = value.hex()
            if hex_string[0:2] != '0x':
                hex_string = '0x' + hex_string
            unhexified_dict[key] = hex_string
        elif isinstance(value,list):
            unhexified_dict[key] = unhexify_list(value)
        else:
            unhexified_dict[key] = value
    return unhexified_dict

def unhexify_list(input_list):
    unhexified_list = []
    for item in input_list:
        if isinstance(item, bytes):
            hex_string = item.hex()
            if hex_string[0:2] != '0x':
                hex_string = '0x' + hex_string
            unhexified_list.append(hex_string)
        else:
            unhexified_list.append(item)
    return unhexified_list

def unlistify_dict(input_dict):
    unlistify_dict = {}
    for key, value in input_dict.items():
        if isinstance(value,list):
            unlistify_dict[key] = str(value)
        else:
            unlistify_dict[key] = value
    return unlistify_dict


def camel_to_snake_str(camel_string):
    snake_string = ''
    n = len(camel_string)
    for index, char in enumerate(camel_string):
        if char.isupper():
            if index != 0 and (camel_string[index - 1].islower() or (index + 1 < n and camel_string[index + 1].islower())):
                snake_string += '_'
        snake_string += char.lower()
    snake_string=snake_string.replace("v1u1","v1_u1") #yeah... legacy
    return snake_string

def camel_to_snake_list(camel_list):
    snake_list = []
    for s in camel_list:
        snake_list.append(camel_to_snake_str(s))
    return snake_list

def camel_to_snake_dict_keys(camel_dict):
    snake_dict = {}
    for key, value in camel_dict.items():
        snake_case_key = camel_to_snake_str(key)
        snake_dict[snake_case_key] = value
    return snake_dict


def flatten_attribute_dict(dictionary,prefix):
    flattened_dict = {}
    for key, value in dictionary.items():
        if isinstance(value, Mapping):
            flattened_dict.update(flatten_attribute_dict(value,prefix))
        else:
            flattened_dict[prefix+key[0].upper() + key[1:]] = value
    return flattened_dict


def flatten_args(dictionary,prefix):
    flattened_dict = {}
    for key, value in dictionary.items():
        if 'args' in key.lower() and isinstance(value, Mapping):
            flattened_dict.update(flatten_attribute_dict(value,prefix))
        else:
            flattened_dict[key] = value
    return flattened_dict


 #####    ##   #####   ##   #####    ##    ####  ###### 
 #    #  #  #    #    #  #  #    #  #  #  #      #      
 #    # #    #   #   #    # #####  #    #  ####  #####  
 #    # ######   #   ###### #    # ######      # #      
 #    # #    #   #   #    # #    # #    # #    # #      
 #####  #    #   #   #    # #####  #    #  ####  ###### 
 
def db_open_connection():
    conn = mysql.connector.connect(  host=db_host,  user=db_user,  password=db_password,  database=db_name)
    c = conn.cursor(buffered=True)  
    return conn, c


def db_close_connection(conn,c):
    c.close()
    conn.close()


def initialization():
    
    q = "SET SESSION innodb_lock_wait_timeout = 300"
    c.execute(q)
    conn.commit()

    q = "SELECT * FROM contracts where contract_address=%s"
    v = (hub_addr,)
    c.execute(q,v)
    res = c.fetchone()
    if res == None:
        q = "insert into contracts (contract_id,contract_address) values (%s,%s)"
        v = (1,hub_addr)
        db_run_tx(q,v)
        
        if chain_id==100: #TRAC token contract was deployed on GNO mainnet long time ago, its out of this sync scope, so i need to add contract manually
            q = "insert into hub_new_contract values (%s,%s,%s,%s,%s,%s)"
            v = ('Token','0xEddd81E0792E764501AaE206EB432399a0268DB5',0,0,14228732,1)
            db_run_tx(q,v)
       # if chain_id==84532:
       #     q = "insert into hub_new_contract values (%s,%s,%s,%s,%s,%s)"
       #     v = ('Token','0x9b17032749aa066a2DeA40b746AA6aa09CdE67d9',0,0,11434105,1)
       #     db_run_tx(q,v)            
       #if chain_id==8453:
       #     q = "insert into hub_new_contract values (%s,%s,%s,%s,%s,%s)"
       #     v = ('Token','0xA81a52B4dda010896cDd386C7fBdc5CDc835ba23',0,0,2615390,1)
       #     db_run_tx(q,v)   


        
    
    q = "SELECT block_num FROM sync_status where parameter='staging_table'"
    c.execute(q)
    res = c.fetchone()
    if res == None:
        q = "insert into sync_status (parameter, block_num) values (%s,%s)"
        v = ('staging_table',first_block_to_sync)
        db_run_tx(q,v)
        
        
        
def db_clean_partial_records(start_block):
    q = "call sp_delete_from_tables_starting_block(%s);"
    v = (start_block,)
    db_run_tx(q,v)

def db_run_tx(query, params): #when you run several flows in parallel it's possible to get deadlocks, so all tx should retry if needed
    retries = 0
    #print(query,params)
    while retries < deadlock_max_retries:
        try:
            c.execute(query,params)
            conn.commit()
            break
        except Exception as e:
            if "Deadlock found when trying to get lock" in str(e):
                print("Deadlock detected. Retrying transaction...")
                retries += 1
                sleep(deadlock_retry_delay)
            else:
                raise
    return c.rowcount



def db_write_dict(dict1, table_name,arg_prefix=''):
    dict1 = flatten_args(dict1,arg_prefix)
    dict1 = unhexify_dict(dict1)
    dict1 = unlistify_dict(dict1)
    dict1 = camel_to_snake_dict_keys(dict1)
    
    
    #if rpc == "wss://parachain-testnet-rpc.origin-trail.network/" and table_name == "proof_manager_v1_u1_proof_submitted": #for testnet proof_manager_v1_u1_proof_submitted have an extra columns which does not exist on mainnet, so it needs to be kicked out
    #    del dict1['state_index']  
        
    #pre-processing
    if table_name in tables_events: #changes applicable to all events table
        dict1['contract_id']=contracts[dict1['address']].get('id')
        del dict1['address']
        del dict1['event']
        del dict1['transaction_hash']
        del dict1['block_hash']
    
    if table_name in tables_txs: #changes applicable to all txs table
        if table_name not in ['other_tx']:
            del dict1['input']
            dict1['to_id']=contracts[dict1['to']].get('id')
            del dict1['to']
        
        for item in ['public_key','raw','standard_v','y_parity','block_hash','nonce','r','s','type','v','value']:
            if item in dict1:
                del dict1[item]
        
    if table_name in ['commit_manager_v1_commit_submitted','commit_manager_v1_u1_commit_submitted','commit_manager_v1_u1_state_finalized','content_asset_asset_burnt','content_asset_asset_minted','content_asset_asset_state_update_canceled','content_asset_asset_state_updated','content_asset_asset_storing_period_extended','content_asset_asset_update_payment_increased','content_asset_payment_increased','proof_manager_v1_proof_submitted','proof_manager_v1_u1_proof_submitted','service_agreement_v1_commit_submitted','service_agreement_v1_proof_submitted','service_agreement_v1_service_agreement_v1_created']:
        dict1['asset_contract_id']=contracts[dict1['asset_contract']].get('id')
        del dict1['asset_contract']
    
   
    if table_name in ['commit_manager_v1_commit_submitted','commit_manager_v1_u1_commit_submitted','commit_manager_v1_u1_state_finalized','proof_manager_v1_proof_submitted','proof_manager_v1_u1_proof_submitted','service_agreement_v1_commit_submitted','service_agreement_v1_proof_submitted','service_agreement_v1_service_agreement_v1_created']:
        dict1['keyword']=dict1['keyword'][-64:]
    
    if 'submit_commit_asset_contract' in dict1:
        dict1['submit_commit_asset_contract_id']=contracts[dict1['submit_commit_asset_contract']].get('id')
        del dict1['submit_commit_asset_contract']       
    if 'submit_update_commit_asset_contract' in dict1:
        dict1['submit_update_commit_asset_contract_id']=contracts[dict1['submit_update_commit_asset_contract']].get('id')
        del dict1['submit_update_commit_asset_contract']        
    if 'get_challenge_asset_contract' in dict1:
        dict1['get_challenge_asset_contract_id']=contracts[dict1['get_challenge_asset_contract']].get('id')
        del dict1['get_challenge_asset_contract']  
    if 'send_proof_asset_contract' in dict1:    
        dict1['send_proof_asset_contract_id']=contracts[dict1['send_proof_asset_contract']].get('id')
        del dict1['send_proof_asset_contract']
    if 'create_service_agreement_asset_contract' in dict1:
        dict1['create_service_agreement_asset_contract_id']=contracts[dict1['create_service_agreement_asset_contract']].get('id')
        del dict1['create_service_agreement_asset_contract']
    if 'send_proof_asset_contract' in dict1:        
        dict1['send_proof_asset_contract_id']=contracts[dict1['send_proof_asset_contract']].get('id')
        del dict1['send_proof_asset_contract']        
    if 'submit_commit_asset_contract' in dict1:        
        dict1['submit_commit_asset_contract_id']=contracts[dict1['submit_commit_asset_contract']].get('id')
        del dict1['submit_commit_asset_contract']  
    if 'increase_allowance_spender' in dict1:        
        dict1['increase_allowance_spender_id']=contracts[dict1['increase_allowance_spender']].get('id')
        del dict1['increase_allowance_spender'] 
    if 'decrease_allowance_spender' in dict1:        
        dict1['decrease_allowance_spender_id']=contracts[dict1['decrease_allowance_spender']].get('id')
        del dict1['decrease_allowance_spender'] 

    if 'paranet_ka_storage_contract' in dict1:
        dict1['paranet_ka_storage_contract_id']=contracts[dict1['paranet_ka_storage_contract']].get('id')
        del dict1['paranet_ka_storage_contract']  
    if 'knowledge_asset_storage_contract' in dict1:
        dict1['knowledge_asset_storage_contract_id']=contracts[dict1['knowledge_asset_storage_contract']].get('id')
        del dict1['knowledge_asset_storage_contract']
    if 'paranet_service_ka_storage_contract' in dict1:
        dict1['paranet_service_ka_storage_contract_id']=contracts[dict1['paranet_service_ka_storage_contract']].get('id')
        del dict1['paranet_service_ka_storage_contract']
        
    if 'submit_commit_keyword' in dict1:
        dict1['submit_commit_keyword']=dict1['submit_commit_keyword'][-64:]
    if 'submit_update_commit_keyword' in dict1:
        dict1['submit_update_commit_keyword']=dict1['submit_update_commit_keyword'][-64:]
    if 'send_proof_keyword' in dict1:
        dict1['send_proof_keyword']=dict1['send_proof_keyword'][-64:]
    if 'create_service_agreement_keyword' in dict1:
        dict1['create_service_agreement_keyword']=dict1['create_service_agreement_keyword'][-64:]   

    if table_name == 'block':
        for item in ['author','base_fee_per_gas','difficulty','extra_data','gas_limit','hash','logs_bloom','miner','nonce','parent_hash','receipts_root','sha3_uncles','size','state_root','total_difficulty','transactions_root','blob_gas_used','excess_blob_gas','parent_beacon_block_root','mix_hash','withdrawals','withdrawals_root','gas_used']:
            if item in dict1:
                del dict1[item]
        
    column_names = list(dict1.keys())
            
    errors = 0
    q = f"INSERT INTO {table_name} (`{'`,`'.join(column_names)}`) VALUES ({', '.join(['%s']*len(column_names))})"
    v = tuple(dict1[column] for column in column_names)
    
    rowcount = db_run_tx(q, v)
    if rowcount != 1:
        errors = 1
    return errors

def db_write_dicts(dicts, table_name):
    errors = 0
    for dict1 in dicts:
        errors += db_write_dict(dict1,table_name)
    return errors    
       

def db_update_latest_synced_block(end_block):
    print(" Last synced block - " + str(end_block) + " | RPC calls - " + str(rpc_calls))
    if sync_missed_range == True:
        q = "update sync_status set block_num = %s where parameter='missed_contract_last_synced_block'"
    else:
        q = "update sync_status set block_num = %s where parameter='last_synced_block'"
    v = (end_block,)
    db_run_tx(q, v)


def db_fetch_last_synced_block():
    q = "select block_num from sync_status where parameter='last_synced_block'"
    c.execute(q)
    res = c.fetchone()
    
    if sync_missed_range == True:
        q = "select block_num from sync_status where parameter='missed_contract_last_synced_block'"
        c.execute(q)
        res = c.fetchone()

    if res == None:
        q = "insert into sync_status (parameter) values ('last_synced_block')"
        c.execute(q)
        return first_block_to_sync
    elif res[0] == None:
        return first_block_to_sync
    else:
        return res[0]+1


#by default this function returns a set of contact addresses applicable to a given block range
#but if a new contract address is available, it does not mean the old one is not used at all
#it's possible some nodes will use old contract for sometime even when a new one is available
#so 1000 blocks is the buffer for that
def db_fetch_contracts(start_block,cur_window):
    q = "call sp_list_contracts(%s,%s)"
    extra_window = 10000
    if chain_id==10200:
        v = (7137666,start_block-7137666+cur_window + extra_window)
    else:
        v = (start_block-extra_window,cur_window + extra_window) 
    c.execute(q,v)
    res = c.fetchall()
    try:
        c.nextset() #looks like there is a bug in mysql driver when stored procedure returns result set. For whatever reason there is one more None result set returned. which needs to be skipped
    except: 
        pass
    #res1 = {key: value for key, value in res}
    #res2 = {k: v for k, v in res1.items() if v in contract_events.keys()} #remove contracts from the list which are not present in config.json
    res1 = {address: {'name': name, 'id': id} for address, name, id in res}
    res2 = {address: info for address, info in res1.items() if info['name'] in contract_events} #remove contracts from the list which are not present in config.json

    return res2



 ######  ######   #####  
 #     # #     # #     # 
 #     # #     # #       
 ######  ######  #       
 #   #   #       #       
 #    #  #       #     # 
 #     # #        #####  

def rpc_call(call):
    status = None
    res = None
    retries = 0
    while retries < rpc_max_retries:
        try:
            res = eval(call)
        except Exception as e:
            print('call_rpc Exception - ' + str(e))
            print('Retry in '+ str(rpc_retry_delay) + 's. ' + str(rpc_max_retries - retries) + ' retries left.')
            sleep(rpc_retry_delay)
            retries = retries + 1
            status = 'fail'
            res = str(e)
        else:
            status = 'pass'
            retries = rpc_max_retries + 1
            global rpc_calls 
            rpc_calls = rpc_calls + 1
    return status, res
 
def rpc_call_events(contr, event, start_block, end_block,contract_name, contract_address):
    status = None
    res = None
    retries = 0
   
    while retries < rpc_max_retries:
        try:
            e_filter = eval("contr.events."+ event+"().create_filter(fromBlock=start_block, toBlock=end_block - 1)")
            res = e_filter.get_all_entries()
        except OverflowError:
            print('Trying fallback_1 '+contract_name+' ABI')   
            with open('./abis/'+abi_v+'/'+contract_name+ '_fallback_1.json', 'r') as f: #load config
                abi = json.load(f)
            contr = w3.eth.contract(address=contract_address,abi=abi)
            try:
                e_filter = eval("contr.events."+ event+"().create_filter(fromBlock=start_block, toBlock=end_block - 1)")
                res = e_filter.get_all_entries()
            except OverflowError:
                print('Trying fallback_2 '+contract_name+' ABI')   
                with open('./abis/'+abi_v+'/'+contract_name+ '_fallback_2.json', 'r') as f: #load config
                    abi = json.load(f)
                contr = w3.eth.contract(address=contract_address,abi=abi)
                try:
                    e_filter = eval("contr.events."+ event+"().create_filter(fromBlock=start_block, toBlock=end_block - 1)")
                    res = e_filter.get_all_entries()
                except:
                    print('call_rpc Exception at fallback_2 - ' + str(e))
                    status = 'fail'
        except Exception as e:
            print('call_rpc Exception - ' + str(e))
            print('Retry in '+ str(rpc_retry_delay) + 's. ' + str(rpc_max_retries - retries) + ' retries left.')
            sleep(rpc_retry_delay)
            retries = retries + 1
            status = 'fail'
            res = str(e)
        else:
            status = 'pass'
            filter_id = e_filter.filter_id
            w3.eth.uninstall_filter(filter_id)
            retries = rpc_max_retries + 1
            global rpc_calls 
            rpc_calls = rpc_calls + 1
    return status, res     
    


def load_abis(abi_v):
    abis = {}
    path = './abis/'+ abi_v + '/'
    for filename in os.listdir(path):
        if filename.endswith('.json'):
            file_path = os.path.join(path, filename)
            with open(file_path, 'r') as file:
                json_content = json.load(file)
                abis[filename[:-5]] = json_content
    return abis        
            


   ##    ####  ##### #    #   ##   #      
  #  #  #    #   #   #    #  #  #  #      
 #    # #        #   #    # #    # #      
 ###### #        #   #    # ###### #      
 #    # #    #   #   #    # #    # #      
 #    #  ####    #    ####  #    # ###### 


def define_blocks_to_sync():
    status, latest_block = rpc_call('w3.eth.block_number')
    latest_block = latest_block - sync_lag
    if sync_missed_range == True:
        latest_block = to_missed_range
    if status == 'pass':
        start_block = db_fetch_last_synced_block()
        if start_block < latest_block:
            if latest_block - start_block < sync_window: #if i don't have full window of blocks available to sync i need to reduce it
                cur_window = latest_block - start_block
                end_block =  latest_block
            else:
                cur_window = sync_window
                end_block = start_block + cur_window
        else:
            cur_window = 0
            end_block = latest_block
        
        if start_block > v3_abi_block and end_block > v3_abi_block:
            abi_v = 'v3'
        elif start_block <= v3_abi_block and end_block > v3_abi_block:
            abi_v = 'v2'
            end_block = v3_abi_block + 1
            cur_window = v3_abi_block - start_block + 1
        elif start_block > v2_abi_block and end_block <= v3_abi_block:
            abi_v = 'v2'
        elif start_block <= v2_abi_block and end_block > v2_abi_block:
            abi_v = 'v1'
            end_block = v2_abi_block + 1
            cur_window = v2_abi_block - start_block + 1
        elif start_block < v2_abi_block and end_block <= v2_abi_block:
            abi_v = 'v1'
        else:
            sys.exit()
           
    else:
        sys.exit()
    return start_block, end_block, cur_window, abi_v


def fetch_blocks_txs(start_block, cur_window):
    blocks_txs = []
    i=0
    while i < cur_window:
        status, data = rpc_call('w3.eth.get_block('+str(start_block+i)+',full_transactions=True)')
        if status == 'pass':
            blocks_txs.append(data)
            i = i + 1
            if i % 50 == 0:  #this is used only during initial sync
                print('.',end='', flush=True)
        else:
            sys.exit()
    return blocks_txs


def split_blocks_txs(attribute_dict_list):
    main_dict_list = []
    transactions_dict_list = []
    #timestamp_dict = {}
    for attribute_dict in blocks_txs:
        main_dict = {}
        transactions_dict = {}
        
        #timestamp_dict[attribute_dict['number']] = attribute_dict['timestamp']
        for key, value in attribute_dict.items():
            if key == 'transactions' and len(key)>0:
                for txs_in_one_block in value:
                    for tx_key, tx_value in txs_in_one_block.items():
                        if tx_key not in ('accessList','maxFeePerGas','maxPriorityFeePerGas'):
                            transactions_dict[tx_key] = tx_value
                    #transactions_dict['blockTimestamp'] = timestamp_dict[transactions_dict['blockNumber']]
                    transactions_dict_list.append(transactions_dict)
                    transactions_dict = {}
            elif key != 'transactions' and key != 'uncles':
                main_dict[key] = value
    
        main_dict_list.append(main_dict)
    return main_dict_list, transactions_dict_list#, timestamp_dict


def format_and_write_txs(txs):
    errors = 0
    for index, item in enumerate(txs):
        if txs[index]['to'] in contracts.keys(): 
            if chain_id != 100 or (chain_id == 100 and txs[index]['input'].hex()[:10]!='0x4000aea0'): #this is for Gnosis chain, my ABI does not have info for transferAndCall function, so i exclude it with this IF
                cur_contract_name = contracts[txs[index]['to']]['name']
                a = w3.eth.contract(address=txs[index]['to'],abi=abis[cur_contract_name])    
                try:
                    func = a.decode_function_input(txs[index]['input'])
                except Exception as e:
                    print('decode_function_input exception')
                    print(e)
                    print(txs[index])
                    db_close_connection(conn,c)
                    sys.exit()
                cur_func_name = func[0].fn_name
    
                txs[index]['function'] = cur_func_name
                #table_name = camel_to_snake_str(contracts[txs[index]['to']]+'Tx')
                table_name = camel_to_snake_str(cur_contract_name+'Tx')
                if cur_func_name in contract_functions[cur_contract_name]: #decode input_data and write to tx table
                    if cur_func_name == 'createAssetWithVariables':
                        cur_func_name = 'createAsset'
                    for key,val in func[1].items():
                        txs[index][cur_func_name+key[0].upper() + key[1:]] = val

                
                try:
                    errors += db_write_dict(txs[index],table_name,arg_prefix=cur_func_name)
                except Exception as e:
                    print('format_and_write_txs exception')
                    print(e)
                    print(table_name)
                    print(txs[index])
                    db_close_connection(conn,c)
                    sys.exit()
                
        elif sync_other_tx == True: #all other txs, work only for OTP, which is TRAC dedicated chain. On other chains there will be a lot of unrelated txs 
            errors += db_write_dict(txs[index],'other_tx')
    return errors


def sync_events(contract_name,contract_address, start_block, end_block, abi_v):
    errors = 0
    with open('./abis/'+abi_v+'/'+contract_name+ '.json', 'r') as f: #load config
        abi = json.load(f)
    
    contr = w3.eth.contract(address=contract_address,abi=abi)
    for event in contract_events[contract_name]:
        #print("\t" +contract_name+ ' | '+ event)
        global e #debug
        status, res = rpc_call_events(contr, event, start_block, end_block,contract_name,contract_address)
        if status == 'pass':
            e = to_dict(res)
            if len(e) > 0:
                print("\t" +contract_name+ ' | '+ event + " | " + str(len(e)) + " events")
                #for e_item in e:#adding timestamps
                #    e_item['blockTimestamp']=timestamps[e_item['blockNumber']]
                #errors += db_write_dicts(e, camel_to_snake_str(contract_name)+'_'+ camel_to_snake_str(event))
                try:
                    errors += db_write_dicts(e, camel_to_snake_str(contract_name)+'_'+ camel_to_snake_str(event))
                except Exception as err:
                    print(err)
                    print(event)
                    print(contract_name)
                    print(camel_to_snake_str(contract_name)+'_'+ camel_to_snake_str(event))
                    sys.exit()
        else:
            sys.exit()    
    return errors


                                                    
 ##### #    # ######     ####   ####  #####  ###### 
   #   #    # #         #    # #    # #    # #         
   #   ###### #####     #      #    # #    # #####  
   #   #    # #         #      #    # #    # #      
   #   #    # #         #    # #    # #    # #      
   #   #    # ######     ####   ####  #####  ###### 


websocket_kwargs = {'max_size': 16777216}
w3 = Web3(Web3.WebsocketProvider(rpc, websocket_kwargs=websocket_kwargs))
db_w_err = 0
conn, c = db_open_connection()
    
initialization()

tick_global = datetime.now()
i=1
while True:
    rpc_calls = 0
    #Hub events
    tick_cycle = datetime.now()
    start_block, end_block, cur_window, abi_v = define_blocks_to_sync()
        
    abis = load_abis(abi_v)
    if abi_v == 'v1':
        contract_events = contract_events_v1
        contract_functions = contract_functions_v1
    elif abi_v == 'v2':
        contract_events = contract_events_v2
        contract_functions = contract_functions_v2
    elif abi_v == 'v3':
        contract_events = contract_events_v3
        contract_functions = contract_functions_v3
    
    if cur_window > 0:
        if sync_missed_range == False:
            tick = datetime.now()
            print("Delete data above block "+ str(start_block)+'...', end='', flush=True )
            db_clean_partial_records(start_block)
            tock = datetime.now()
            print(str((tock - tick).seconds) + 's. ', end='', flush=True)
        
        print("Syncing blocks " + str(start_block) + " to " + str(end_block) + ". Batch - " + str(cur_window))
        #fetching blocks and txs
        tick = datetime.now()
        print("\tBlocks and txs:", end='', flush=True)
        blocks_txs = fetch_blocks_txs(start_block, cur_window)
        #blocks, txs, timestamps = split_blocks_txs(blocks_txs)
        blocks, txs = split_blocks_txs(blocks_txs)
        tock = datetime.now()
        print(str((tock - tick).seconds) + 's')
        
        #fetching and writing Hub events, also updating contracts table
        if sync_missed_range == False:
            tick = datetime.now()
            contracts = db_fetch_contracts(start_block,cur_window) #only for Hub contact ID really
            sync_events('Hub',hub_addr, start_block, end_block, abi_v)
            q = "call sp_update_contracts();"
            v = None
            db_run_tx(q,v)
            tock = datetime.now()
            print("\tHub events - "+str((tock - tick).seconds) + 's')
        contracts = db_fetch_contracts(start_block,cur_window) #fetch fresh list in case we had Hub events    
        
                    
        #fetching and writing all other events
        tick = datetime.now()
        for key, value in contracts.items():
            if value['name']  != 'Hub':
                db_w_err += sync_events(value['name'], key, start_block, end_block, abi_v)
        tock = datetime.now()
        print("\tOther events - "+str((tock - tick).seconds) + 's')
        
        #writing blocks and txs
        if sync_missed_range == False:
            db_w_err += db_write_dicts(blocks, 'block')
        if len(txs)>0:
            db_w_err += format_and_write_txs(txs)
    
        tock_cycle = datetime.now()
        print('\tCycle '+ str((tock_cycle - tick_cycle).seconds) + 's, '+ str(round((tock_cycle - tick_cycle).seconds / cur_window, 2)) + 's per block | Total '+ str(cur_window*i)+' blocks, '+ str((tock_cycle - tick_global).seconds) + 's, '+ str(round((tock_cycle - tick_global).seconds / (cur_window*i), 2))+ 's per block |'  ,end='', flush=True)
        
        i = i + 1
        if db_w_err == 0:
           db_update_latest_synced_block(end_block-1)
    else:
        print('Latest synched block - ' + str(start_block) + '. Latest RPC block - ' + str(end_block) +'. No new data to sync')
    #sys.exit()
    #sleep(10)
    #i+=1
    if cur_window < sync_window: #full sync is done
        print('\tSleep '+str(sync_pause)+'s...')    
        dreams = sync_pause // 10
        j = 0
        while j < dreams:
            sleep(10)
            j = j + 1
        
        #sleep(sync_pause)
    print('----------------------------------------------------------')

db_close_connection(conn,c)







