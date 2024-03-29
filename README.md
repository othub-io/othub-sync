# othub-sync
OTHub Sync is a Python-based repository that fetches blocks, transactions and events data for select DKG smart contracts from the blockchains and stores it in a local MySQL database. The synchronized database has stored procedures and events to ensure that staging tables are up to date with on-chain data at all times. OTHub Sync is the cornerstone of [OTHub](othub.io) and all its other dependencies.


# Setup
Clone the repo  
Create database structure by restoring restore_me_step1.sql dump, then restore_me_step2.sql  
Update config file  
Run the python script  


# Config
For the most part mainnet and testnet configs are the same, but there are some values which are specific for each network.  
  
**OTP mainnet specific values:**  
   "rpc":"wss://parachain-rpc.origin-trail.network",  
   "sync_other_tx":true,  
   "chain_id":2043,  
   "hub_addr":"0x5fA7916c48Fe6D5F1738d12Ad234b78c90B4cAdA",  
   "v2_abi_block":2164677,  
   "start_block":1346270  

**OTP testnet specific values:**  
   "rpc":"wss://parachain-testnet-rpc.origin-trail.network/",  
   "sync_other_tx":true,  
   "chain_id":20430,  
   "hub_addr":"0xBbfF7Ea6b2Addc1f38A0798329e12C08f03750A6",  
   "v2_abi_block":1554800,  
   "start_block":982279  

**Gnosis Chiado testnet specific values:**  
   "rpc":"wss://rpc.chiadochain.net/wss",  
   "sync_other_tx":false,  
   "chain_id":10200,  
   "hub_addr":"0xC06210312C9217A0EdF67453618F5eB96668679A",  
   "v2_abi_block":7137657,  
   "v3_abi_block":8045269,   
   "start_block":7137657  
   
**Gnosis mainnet specific values:**  
   "rpc":"wss://rpc.gnosischain.com/wss",  
   "sync_other_tx":false,  
   "chain_id":100,  
   "hub_addr":"0xbEF14fc04F870c2dD65c13Df4faB6ba01A9c746b",  
   "v2_abi_block":31526167,  
   "start_block":31526167  

# Database
## Tables
| Params            | Description                                |
|-------------------|-------------------------------------------|
| block              | block data |
| <smart_contract_name>_<event_name>   | event data for a particular smart contract (e.g. assertion_assertion_created table stores assertion_created event data for Assertion smart contract)     |
| <smart_contract_name>_tx           | transaction data for a particular smart contract (e.g. assertion_tx)      |
| staging_*       | staging tables built for reporting purposes                 |
| sync_status            | latest synced block and latest block for staging tables             |


# Known issues
It seem something wasn't captured correctly on a mainnet from the chain for token ids 202671 - 202696. These assets were published around the time when many smart contracts were changed (2164677). I can see submitProofs for them being indexed, but createAsset and submitCommit are missing.

