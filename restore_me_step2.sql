CREATE DATABASE  IF NOT EXISTS `dkg_mainnet` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dkg_mainnet`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dkg_mainnet
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chains`
--

DROP TABLE IF EXISTS `chains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chains` (
  `chain_id` smallint unsigned NOT NULL,
  `chain_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`chain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `v_nodes`
--

DROP TABLE IF EXISTS `v_nodes`;
/*!50001 DROP VIEW IF EXISTS `v_nodes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_nodes` AS SELECT 
 1 AS `chainName`,
 1 AS `chainId`,
 1 AS `nodeId`,
 1 AS `networkId`,
 1 AS `tokenName`,
 1 AS `tokenSymbol`,
 1 AS `nodeOwner`,
 1 AS `nodeGroup`,
 1 AS `createProfile_adminWallet`,
 1 AS `createProfile_adminWallet_hash`,
 1 AS `current_adminWallet_hashes`,
 1 AS `createProfile_blockNumber`,
 1 AS `createProfile_txHash`,
 1 AS `createProfile_ts`,
 1 AS `createProfile_date`,
 1 AS `nodeAgeDays`,
 1 AS `nodeStake`,
 1 AS `nodeAsk`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_nodes_activity_last1min`
--

DROP TABLE IF EXISTS `v_nodes_activity_last1min`;
/*!50001 DROP VIEW IF EXISTS `v_nodes_activity_last1min`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_nodes_activity_last1min` AS SELECT 
 1 AS `chain_id`,
 1 AS `nodeId`,
 1 AS `tokenName`,
 1 AS `tokenSymbol`,
 1 AS `UAL`,
 1 AS `datetime`,
 1 AS `assetContractId`,
 1 AS `tokenId`,
 1 AS `transactionHash`,
 1 AS `eventName`,
 1 AS `eventValue1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_nodes_stats_grouped_daily`
--

DROP TABLE IF EXISTS `v_nodes_stats_grouped_daily`;
/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_daily`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_nodes_stats_grouped_daily` AS SELECT 
 1 AS `date`,
 1 AS `estimatedEarnings1stEpochOnly`,
 1 AS `estimatedEarnings2plusEpochs`,
 1 AS `commitsSubmitted1stEpochOnly`,
 1 AS `cumulativeCommitsSubmitted1stEpochOnly`,
 1 AS `commitsSubmitted2plusEpochs`,
 1 AS `cumulativeCommitsSubmitted2plusEpochs`,
 1 AS `payouts`,
 1 AS `cumulativePayouts`,
 1 AS `proofsSubmitted`,
 1 AS `cumulativeProofsSubmitted`,
 1 AS `combinedNodesStake`,
 1 AS `avgNodeStake`,
 1 AS `nodesWithMoreThan50kStake`,
 1 AS `nodesWithLessThan50kStake`,
 1 AS `combinedAsk`,
 1 AS `avgAsk`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_nodes_stats_grouped_hourly_7d`
--

DROP TABLE IF EXISTS `v_nodes_stats_grouped_hourly_7d`;
/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_hourly_7d`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_nodes_stats_grouped_hourly_7d` AS SELECT 
 1 AS `date`,
 1 AS `datetime`,
 1 AS `estimatedEarnings1stEpochOnly`,
 1 AS `estimatedEarnings2plusEpochs`,
 1 AS `commitsSubmitted1stEpochOnly`,
 1 AS `cumulativeCommitsSubmitted1stEpochOnly`,
 1 AS `commitsSubmitted2plusEpochs`,
 1 AS `cumulativeCommitsSubmitted2plusEpochs`,
 1 AS `payouts`,
 1 AS `cumulativePayouts`,
 1 AS `proofsSubmitted`,
 1 AS `cumulativeProofsSubmitted`,
 1 AS `combinedNodesStake`,
 1 AS `avgNodeStake`,
 1 AS `nodesWithMoreThan50kStake`,
 1 AS `nodesWithLessThan50kStake`,
 1 AS `combinedAsk`,
 1 AS `avgAsk`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_nodes_stats_grouped_monthly`
--

DROP TABLE IF EXISTS `v_nodes_stats_grouped_monthly`;
/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_monthly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_nodes_stats_grouped_monthly` AS SELECT 
 1 AS `date`,
 1 AS `estimatedEarnings1stEpochOnly`,
 1 AS `estimatedEarnings2plusEpochs`,
 1 AS `commitsSubmitted1stEpochOnly`,
 1 AS `cumulativeCommitsSubmitted1stEpochOnly`,
 1 AS `commitsSubmitted2plusEpochs`,
 1 AS `cumulativeCommitsSubmitted2plusEpochs`,
 1 AS `payouts`,
 1 AS `cumulativePayouts`,
 1 AS `proofsSubmitted`,
 1 AS `cumulativeProofsSubmitted`,
 1 AS `combinedNodesStake`,
 1 AS `avgNodeStake`,
 1 AS `nodesWithMoreThan50kStake`,
 1 AS `nodesWithLessThan50kStake`,
 1 AS `combinedAsk`,
 1 AS `avgAsk`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs`
--

DROP TABLE IF EXISTS `v_pubs`;
/*!50001 DROP VIEW IF EXISTS `v_pubs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs` AS SELECT 
 1 AS `chain_name`,
 1 AS `contract_address`,
 1 AS `token_id`,
 1 AS `keyword`,
 1 AS `UAL`,
 1 AS `chain_id`,
 1 AS `size`,
 1 AS `triples_number`,
 1 AS `chunks_number`,
 1 AS `hash_function_id`,
 1 AS `epochs_number`,
 1 AS `epoch_length`,
 1 AS `epoch_length_days`,
 1 AS `token_amount`,
 1 AS `bid`,
 1 AS `transaction_hash`,
 1 AS `transaction_index`,
 1 AS `block_number`,
 1 AS `block_timestamp`,
 1 AS `block_ts`,
 1 AS `block_date`,
 1 AS `block_ts_hour`,
 1 AS `state_index`,
 1 AS `state`,
 1 AS `previous_states`,
 1 AS `publisher`,
 1 AS `publisher_short`,
 1 AS `owner`,
 1 AS `winners`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_activity_last1min`
--

DROP TABLE IF EXISTS `v_pubs_activity_last1min`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_activity_last1min`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_activity_last1min` AS SELECT 
 1 AS `chain_id`,
 1 AS `signer`,
 1 AS `UAL`,
 1 AS `datetime`,
 1 AS `assetContractId`,
 1 AS `tokenId`,
 1 AS `transactionHash`,
 1 AS `eventName`,
 1 AS `eventValue1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_activity_last24h`
--

DROP TABLE IF EXISTS `v_pubs_activity_last24h`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_activity_last24h`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_activity_last24h` AS SELECT 
 1 AS `chain_id`,
 1 AS `signer`,
 1 AS `UAL`,
 1 AS `datetime`,
 1 AS `assetContractId`,
 1 AS `tokenId`,
 1 AS `transactionHash`,
 1 AS `eventName`,
 1 AS `eventValue1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_daily`
--

DROP TABLE IF EXISTS `v_pubs_stats_daily`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_daily`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_daily` AS SELECT 
 1 AS `date`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`,
 1 AS `cumulativeTotalTracSpent`,
 1 AS `cumulativePubs`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_hourly`
--

DROP TABLE IF EXISTS `v_pubs_stats_hourly`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_hourly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_hourly` AS SELECT 
 1 AS `date`,
 1 AS `datetime`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`,
 1 AS `cumulativeTotalTracSpent`,
 1 AS `cumulativePubs`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_last1h`
--

DROP TABLE IF EXISTS `v_pubs_stats_last1h`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last1h`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_last1h` AS SELECT 
 1 AS `datetime`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_last24h`
--

DROP TABLE IF EXISTS `v_pubs_stats_last24h`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last24h`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_last24h` AS SELECT 
 1 AS `datetime`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_last30d`
--

DROP TABLE IF EXISTS `v_pubs_stats_last30d`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last30d`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_last30d` AS SELECT 
 1 AS `datetime`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_last7d`
--

DROP TABLE IF EXISTS `v_pubs_stats_last7d`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last7d`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_last7d` AS SELECT 
 1 AS `datetime`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_monthly`
--

DROP TABLE IF EXISTS `v_pubs_stats_monthly`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_monthly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_monthly` AS SELECT 
 1 AS `date`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`,
 1 AS `cumulativeTotalTracSpent`,
 1 AS `cumulativePubs`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_total`
--

DROP TABLE IF EXISTS `v_pubs_stats_total`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_total` AS SELECT 
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'dkg_mainnet'
--

--
-- Dumping routines for database 'dkg_mainnet'
--

--
-- Final view structure for view `v_nodes`
--

/*!50001 DROP VIEW IF EXISTS `v_nodes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nodes` AS select `ch`.`chain_name` AS `chainName`,`b`.`chain_id` AS `chainId`,`sync_otp_mainnet`.`a`.`nodeId` AS `nodeId`,`sync_otp_mainnet`.`a`.`networkId` AS `networkId`,`sync_otp_mainnet`.`a`.`tokenName` AS `tokenName`,`sync_otp_mainnet`.`a`.`tokenSymbol` AS `tokenSymbol`,`sync_otp_mainnet`.`a`.`nodeOwner` AS `nodeOwner`,`sync_otp_mainnet`.`a`.`nodeGroup` AS `nodeGroup`,`sync_otp_mainnet`.`a`.`createProfile_adminWallet` AS `createProfile_adminWallet`,`sync_otp_mainnet`.`a`.`createProfile_adminWallet_hash` AS `createProfile_adminWallet_hash`,`sync_otp_mainnet`.`a`.`current_adminWallet_hashes` AS `current_adminWallet_hashes`,`sync_otp_mainnet`.`a`.`createProfile_blockNumber` AS `createProfile_blockNumber`,`sync_otp_mainnet`.`a`.`createProfile_txHash` AS `createProfile_txHash`,`sync_otp_mainnet`.`a`.`createProfile_ts` AS `createProfile_ts`,`sync_otp_mainnet`.`a`.`createProfile_date` AS `createProfile_date`,`sync_otp_mainnet`.`a`.`nodeAgeDays` AS `nodeAgeDays`,`sync_otp_mainnet`.`a`.`nodeStake` AS `nodeStake`,`sync_otp_mainnet`.`a`.`nodeAsk` AS `nodeAsk` from ((`sync_otp_mainnet`.`v_nodes` `a` join (select `sync_otp_mainnet`.`profile_tx`.`chain_id` AS `chain_id` from `sync_otp_mainnet`.`profile_tx` limit 1) `b`) join `othubdb`.`blockchains` `ch` on((`b`.`chain_id` = `ch`.`chain_id`))) union all select `ch`.`chain_name` AS `chainName`,`b`.`chain_id` AS `chainId`,`sync_gnosis_mainnet`.`a`.`nodeId` AS `nodeId`,`sync_gnosis_mainnet`.`a`.`networkId` AS `networkId`,`sync_gnosis_mainnet`.`a`.`tokenName` AS `tokenName`,`sync_gnosis_mainnet`.`a`.`tokenSymbol` AS `tokenSymbol`,`sync_gnosis_mainnet`.`a`.`nodeOwner` AS `nodeOwner`,`sync_gnosis_mainnet`.`a`.`nodeGroup` AS `nodeGroup`,`sync_gnosis_mainnet`.`a`.`createProfile_adminWallet` AS `createProfile_adminWallet`,`sync_gnosis_mainnet`.`a`.`createProfile_adminWallet_hash` AS `createProfile_adminWallet_hash`,`sync_gnosis_mainnet`.`a`.`current_adminWallet_hashes` AS `current_adminWallet_hashes`,`sync_gnosis_mainnet`.`a`.`createProfile_blockNumber` AS `createProfile_blockNumber`,`sync_gnosis_mainnet`.`a`.`createProfile_txHash` AS `createProfile_txHash`,`sync_gnosis_mainnet`.`a`.`createProfile_ts` AS `createProfile_ts`,`sync_gnosis_mainnet`.`a`.`createProfile_date` AS `createProfile_date`,`sync_gnosis_mainnet`.`a`.`nodeAgeDays` AS `nodeAgeDays`,`sync_gnosis_mainnet`.`a`.`nodeStake` AS `nodeStake`,`sync_gnosis_mainnet`.`a`.`nodeAsk` AS `nodeAsk` from ((`sync_gnosis_mainnet`.`v_nodes` `a` join (select `sync_gnosis_mainnet`.`profile_tx`.`chain_id` AS `chain_id` from `sync_gnosis_mainnet`.`profile_tx` limit 1) `b`) join `othubdb`.`blockchains` `ch` on((`b`.`chain_id` = `ch`.`chain_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_nodes_activity_last1min`
--

/*!50001 DROP VIEW IF EXISTS `v_nodes_activity_last1min`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nodes_activity_last1min` AS select `sync_otp_mainnet`.`v_nodes_activity_last1min`.`chain_id` AS `chain_id`,`sync_otp_mainnet`.`v_nodes_activity_last1min`.`nodeId` AS `nodeId`,`sync_otp_mainnet`.`v_nodes_activity_last1min`.`tokenName` AS `tokenName`,`sync_otp_mainnet`.`v_nodes_activity_last1min`.`tokenSymbol` AS `tokenSymbol`,`sync_otp_mainnet`.`v_nodes_activity_last1min`.`UAL` AS `UAL`,`sync_otp_mainnet`.`v_nodes_activity_last1min`.`datetime` AS `datetime`,`sync_otp_mainnet`.`v_nodes_activity_last1min`.`assetContractId` AS `assetContractId`,`sync_otp_mainnet`.`v_nodes_activity_last1min`.`tokenId` AS `tokenId`,`sync_otp_mainnet`.`v_nodes_activity_last1min`.`transactionHash` AS `transactionHash`,`sync_otp_mainnet`.`v_nodes_activity_last1min`.`eventName` AS `eventName`,`sync_otp_mainnet`.`v_nodes_activity_last1min`.`eventValue1` AS `eventValue1` from `sync_otp_mainnet`.`v_nodes_activity_last1min` union all select `sync_gnosis_mainnet`.`v_nodes_activity_last1min`.`chain_id` AS `chain_id`,`sync_gnosis_mainnet`.`v_nodes_activity_last1min`.`nodeId` AS `nodeId`,`sync_gnosis_mainnet`.`v_nodes_activity_last1min`.`tokenName` AS `tokenName`,`sync_gnosis_mainnet`.`v_nodes_activity_last1min`.`tokenSymbol` AS `tokenSymbol`,`sync_gnosis_mainnet`.`v_nodes_activity_last1min`.`UAL` AS `UAL`,`sync_gnosis_mainnet`.`v_nodes_activity_last1min`.`datetime` AS `datetime`,`sync_gnosis_mainnet`.`v_nodes_activity_last1min`.`assetContractId` AS `assetContractId`,`sync_gnosis_mainnet`.`v_nodes_activity_last1min`.`tokenId` AS `tokenId`,`sync_gnosis_mainnet`.`v_nodes_activity_last1min`.`transactionHash` AS `transactionHash`,`sync_gnosis_mainnet`.`v_nodes_activity_last1min`.`eventName` AS `eventName`,`sync_gnosis_mainnet`.`v_nodes_activity_last1min`.`eventValue1` AS `eventValue1` from `sync_gnosis_mainnet`.`v_nodes_activity_last1min` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_nodes_stats_grouped_daily`
--

/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_daily`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nodes_stats_grouped_daily` AS with `combined_0` as (select `ch`.`chain_name` AS `chainName`,`b`.`chain_id` AS `chainId`,`sync_otp_mainnet`.`a`.`date` AS `date`,`sync_otp_mainnet`.`a`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_otp_mainnet`.`a`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_otp_mainnet`.`a`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_otp_mainnet`.`a`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_otp_mainnet`.`a`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_otp_mainnet`.`a`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_otp_mainnet`.`a`.`payouts` AS `payouts`,`sync_otp_mainnet`.`a`.`cumulativePayouts` AS `cumulativePayouts`,`sync_otp_mainnet`.`a`.`proofsSubmitted` AS `proofsSubmitted`,`sync_otp_mainnet`.`a`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_otp_mainnet`.`a`.`combinedNodesStake` AS `combinedNodesStake`,`sync_otp_mainnet`.`a`.`avgNodeStake` AS `avgNodeStake`,`sync_otp_mainnet`.`a`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_otp_mainnet`.`a`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_otp_mainnet`.`a`.`combinedAsk` AS `combinedAsk`,`sync_otp_mainnet`.`a`.`avgAsk` AS `avgAsk` from ((`sync_otp_mainnet`.`v_nodes_stats_grouped_daily` `a` join (select `sync_otp_mainnet`.`profile_tx`.`chain_id` AS `chain_id` from `sync_otp_mainnet`.`profile_tx` limit 1) `b`) join `othubdb`.`blockchains` `ch` on((`b`.`chain_id` = `ch`.`chain_id`))) union all select `ch`.`chain_name` AS `chainName`,`b`.`chain_id` AS `chainId`,`sync_gnosis_mainnet`.`a`.`date` AS `date`,`sync_gnosis_mainnet`.`a`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_gnosis_mainnet`.`a`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_gnosis_mainnet`.`a`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_gnosis_mainnet`.`a`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_gnosis_mainnet`.`a`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_gnosis_mainnet`.`a`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_gnosis_mainnet`.`a`.`payouts` AS `payouts`,`sync_gnosis_mainnet`.`a`.`cumulativePayouts` AS `cumulativePayouts`,`sync_gnosis_mainnet`.`a`.`proofsSubmitted` AS `proofsSubmitted`,`sync_gnosis_mainnet`.`a`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_gnosis_mainnet`.`a`.`combinedNodesStake` AS `combinedNodesStake`,`sync_gnosis_mainnet`.`a`.`avgNodeStake` AS `avgNodeStake`,`sync_gnosis_mainnet`.`a`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_gnosis_mainnet`.`a`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_gnosis_mainnet`.`a`.`combinedAsk` AS `combinedAsk`,`sync_gnosis_mainnet`.`a`.`avgAsk` AS `avgAsk` from ((`sync_gnosis_mainnet`.`v_nodes_stats_grouped_daily` `a` join (select `sync_gnosis_mainnet`.`profile_tx`.`chain_id` AS `chain_id` from `sync_gnosis_mainnet`.`profile_tx` limit 1) `b`) join `othubdb`.`blockchains` `ch` on((`b`.`chain_id` = `ch`.`chain_id`)))) select `a`.`date` AS `date`,sum(`a`.`estimatedEarnings1stEpochOnly`) AS `estimatedEarnings1stEpochOnly`,sum(`a`.`estimatedEarnings2plusEpochs`) AS `estimatedEarnings2plusEpochs`,sum(`a`.`commitsSubmitted1stEpochOnly`) AS `commitsSubmitted1stEpochOnly`,sum(`a`.`cumulativeCommitsSubmitted1stEpochOnly`) AS `cumulativeCommitsSubmitted1stEpochOnly`,sum(`a`.`commitsSubmitted2plusEpochs`) AS `commitsSubmitted2plusEpochs`,sum(`a`.`cumulativeCommitsSubmitted2plusEpochs`) AS `cumulativeCommitsSubmitted2plusEpochs`,sum(`a`.`payouts`) AS `payouts`,sum(`a`.`cumulativePayouts`) AS `cumulativePayouts`,sum(`a`.`proofsSubmitted`) AS `proofsSubmitted`,sum(`a`.`cumulativeProofsSubmitted`) AS `cumulativeProofsSubmitted`,sum(`a`.`combinedNodesStake`) AS `combinedNodesStake`,(sum(`a`.`combinedNodesStake`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgNodeStake`,sum(`a`.`nodesWithMoreThan50kStake`) AS `nodesWithMoreThan50kStake`,sum(`a`.`nodesWithLessThan50kStake`) AS `nodesWithLessThan50kStake`,sum(`a`.`combinedAsk`) AS `combinedAsk`,(sum(`a`.`combinedAsk`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgAsk` from `combined_0` `a` group by `a`.`date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_nodes_stats_grouped_hourly_7d`
--

/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_hourly_7d`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nodes_stats_grouped_hourly_7d` AS select `a`.`date` AS `date`,`a`.`datetime` AS `datetime`,sum(`a`.`estimatedEarnings1stEpochOnly`) AS `estimatedEarnings1stEpochOnly`,sum(`a`.`estimatedEarnings2plusEpochs`) AS `estimatedEarnings2plusEpochs`,sum(`a`.`commitsSubmitted1stEpochOnly`) AS `commitsSubmitted1stEpochOnly`,sum(`a`.`cumulativeCommitsSubmitted1stEpochOnly`) AS `cumulativeCommitsSubmitted1stEpochOnly`,sum(`a`.`commitsSubmitted2plusEpochs`) AS `commitsSubmitted2plusEpochs`,sum(`a`.`cumulativeCommitsSubmitted2plusEpochs`) AS `cumulativeCommitsSubmitted2plusEpochs`,sum(`a`.`payouts`) AS `payouts`,sum(`a`.`cumulativePayouts`) AS `cumulativePayouts`,sum(`a`.`proofsSubmitted`) AS `proofsSubmitted`,sum(`a`.`cumulativeProofsSubmitted`) AS `cumulativeProofsSubmitted`,sum(`a`.`combinedNodesStake`) AS `combinedNodesStake`,(sum(`a`.`combinedNodesStake`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgNodeStake`,sum(`a`.`nodesWithMoreThan50kStake`) AS `nodesWithMoreThan50kStake`,sum(`a`.`nodesWithLessThan50kStake`) AS `nodesWithLessThan50kStake`,sum(`a`.`combinedAsk`) AS `combinedAsk`,(sum(`a`.`combinedAsk`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgAsk` from (select `sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`date` AS `date`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`datetime` AS `datetime`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`payouts` AS `payouts`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativePayouts` AS `cumulativePayouts`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`proofsSubmitted` AS `proofsSubmitted`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`combinedNodesStake` AS `combinedNodesStake`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`avgNodeStake` AS `avgNodeStake`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`combinedAsk` AS `combinedAsk`,`sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`avgAsk` AS `avgAsk` from `sync_otp_mainnet`.`v_nodes_stats_grouped_hourly_7d` union all select `sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`date` AS `date`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`datetime` AS `datetime`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`payouts` AS `payouts`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativePayouts` AS `cumulativePayouts`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`proofsSubmitted` AS `proofsSubmitted`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`combinedNodesStake` AS `combinedNodesStake`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`avgNodeStake` AS `avgNodeStake`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`combinedAsk` AS `combinedAsk`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`.`avgAsk` AS `avgAsk` from `sync_gnosis_mainnet`.`v_nodes_stats_grouped_hourly_7d`) `a` group by `a`.`date`,`a`.`datetime` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_nodes_stats_grouped_monthly`
--

/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_monthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nodes_stats_grouped_monthly` AS select `a`.`date` AS `date`,sum(`a`.`estimatedEarnings1stEpochOnly`) AS `estimatedEarnings1stEpochOnly`,sum(`a`.`estimatedEarnings2plusEpochs`) AS `estimatedEarnings2plusEpochs`,sum(`a`.`commitsSubmitted1stEpochOnly`) AS `commitsSubmitted1stEpochOnly`,sum(`a`.`cumulativeCommitsSubmitted1stEpochOnly`) AS `cumulativeCommitsSubmitted1stEpochOnly`,sum(`a`.`commitsSubmitted2plusEpochs`) AS `commitsSubmitted2plusEpochs`,sum(`a`.`cumulativeCommitsSubmitted2plusEpochs`) AS `cumulativeCommitsSubmitted2plusEpochs`,sum(`a`.`payouts`) AS `payouts`,sum(`a`.`cumulativePayouts`) AS `cumulativePayouts`,sum(`a`.`proofsSubmitted`) AS `proofsSubmitted`,sum(`a`.`cumulativeProofsSubmitted`) AS `cumulativeProofsSubmitted`,sum(`a`.`combinedNodesStake`) AS `combinedNodesStake`,(sum(`a`.`combinedNodesStake`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgNodeStake`,sum(`a`.`nodesWithMoreThan50kStake`) AS `nodesWithMoreThan50kStake`,sum(`a`.`nodesWithLessThan50kStake`) AS `nodesWithLessThan50kStake`,sum(`a`.`combinedAsk`) AS `combinedAsk`,(sum(`a`.`combinedAsk`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgAsk` from (select `sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`date` AS `date`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`payouts` AS `payouts`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`cumulativePayouts` AS `cumulativePayouts`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`proofsSubmitted` AS `proofsSubmitted`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`combinedNodesStake` AS `combinedNodesStake`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`avgNodeStake` AS `avgNodeStake`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`combinedAsk` AS `combinedAsk`,`sync_otp_mainnet`.`v_nodes_stats_grouped_monthly`.`avgAsk` AS `avgAsk` from `sync_otp_mainnet`.`v_nodes_stats_grouped_monthly` union all select `sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`date` AS `date`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`payouts` AS `payouts`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`cumulativePayouts` AS `cumulativePayouts`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`proofsSubmitted` AS `proofsSubmitted`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`combinedNodesStake` AS `combinedNodesStake`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`avgNodeStake` AS `avgNodeStake`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`combinedAsk` AS `combinedAsk`,`sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`.`avgAsk` AS `avgAsk` from `sync_gnosis_mainnet`.`v_nodes_stats_grouped_monthly`) `a` group by `a`.`date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs` AS (select `b`.`chain_name` AS `chain_name`,`sync_otp_mainnet`.`a`.`contract_address` AS `contract_address`,`sync_otp_mainnet`.`a`.`token_id` AS `token_id`,`sync_otp_mainnet`.`a`.`keyword` AS `keyword`,`sync_otp_mainnet`.`a`.`UAL` AS `UAL`,`sync_otp_mainnet`.`a`.`chain_id` AS `chain_id`,`sync_otp_mainnet`.`a`.`size` AS `size`,`sync_otp_mainnet`.`a`.`triples_number` AS `triples_number`,`sync_otp_mainnet`.`a`.`chunks_number` AS `chunks_number`,`sync_otp_mainnet`.`a`.`hash_function_id` AS `hash_function_id`,`sync_otp_mainnet`.`a`.`epochs_number` AS `epochs_number`,`sync_otp_mainnet`.`a`.`epoch_length` AS `epoch_length`,`sync_otp_mainnet`.`a`.`epoch_length_days` AS `epoch_length_days`,`sync_otp_mainnet`.`a`.`token_amount` AS `token_amount`,`sync_otp_mainnet`.`a`.`bid` AS `bid`,`sync_otp_mainnet`.`a`.`transaction_hash` AS `transaction_hash`,`sync_otp_mainnet`.`a`.`transaction_index` AS `transaction_index`,`sync_otp_mainnet`.`a`.`block_number` AS `block_number`,`sync_otp_mainnet`.`a`.`block_timestamp` AS `block_timestamp`,`sync_otp_mainnet`.`a`.`block_ts` AS `block_ts`,`sync_otp_mainnet`.`a`.`block_date` AS `block_date`,`sync_otp_mainnet`.`a`.`block_ts_hour` AS `block_ts_hour`,`sync_otp_mainnet`.`a`.`state_index` AS `state_index`,`sync_otp_mainnet`.`a`.`state` AS `state`,`sync_otp_mainnet`.`a`.`previous_states` AS `previous_states`,`sync_otp_mainnet`.`a`.`publisher` AS `publisher`,`sync_otp_mainnet`.`a`.`publisher_short` AS `publisher_short`,`sync_otp_mainnet`.`a`.`owner` AS `owner`,`sync_otp_mainnet`.`a`.`winners` AS `winners` from (`sync_otp_mainnet`.`v_pubs` `a` join `othubdb`.`blockchains` `b` on((`sync_otp_mainnet`.`a`.`chain_id` = `b`.`chain_id`))) order by `sync_otp_mainnet`.`a`.`block_date` desc,`sync_otp_mainnet`.`a`.`block_ts_hour` desc limit 1000) union all (select `b`.`chain_name` AS `chain_name`,`sync_gnosis_mainnet`.`a`.`contract_address` AS `contract_address`,`sync_gnosis_mainnet`.`a`.`token_id` AS `token_id`,`sync_gnosis_mainnet`.`a`.`keyword` AS `keyword`,`sync_gnosis_mainnet`.`a`.`UAL` AS `UAL`,`sync_gnosis_mainnet`.`a`.`chain_id` AS `chain_id`,`sync_gnosis_mainnet`.`a`.`size` AS `size`,`sync_gnosis_mainnet`.`a`.`triples_number` AS `triples_number`,`sync_gnosis_mainnet`.`a`.`chunks_number` AS `chunks_number`,`sync_gnosis_mainnet`.`a`.`hash_function_id` AS `hash_function_id`,`sync_gnosis_mainnet`.`a`.`epochs_number` AS `epochs_number`,`sync_gnosis_mainnet`.`a`.`epoch_length` AS `epoch_length`,`sync_gnosis_mainnet`.`a`.`epoch_length_days` AS `epoch_length_days`,`sync_gnosis_mainnet`.`a`.`token_amount` AS `token_amount`,`sync_gnosis_mainnet`.`a`.`bid` AS `bid`,`sync_gnosis_mainnet`.`a`.`transaction_hash` AS `transaction_hash`,`sync_gnosis_mainnet`.`a`.`transaction_index` AS `transaction_index`,`sync_gnosis_mainnet`.`a`.`block_number` AS `block_number`,`sync_gnosis_mainnet`.`a`.`block_timestamp` AS `block_timestamp`,`sync_gnosis_mainnet`.`a`.`block_ts` AS `block_ts`,`sync_gnosis_mainnet`.`a`.`block_date` AS `block_date`,`sync_gnosis_mainnet`.`a`.`block_ts_hour` AS `block_ts_hour`,`sync_gnosis_mainnet`.`a`.`state_index` AS `state_index`,`sync_gnosis_mainnet`.`a`.`state` AS `state`,`sync_gnosis_mainnet`.`a`.`previous_states` AS `previous_states`,`sync_gnosis_mainnet`.`a`.`publisher` AS `publisher`,`sync_gnosis_mainnet`.`a`.`publisher_short` AS `publisher_short`,`sync_gnosis_mainnet`.`a`.`owner` AS `owner`,`sync_gnosis_mainnet`.`a`.`winners` AS `winners` from (`sync_gnosis_mainnet`.`v_pubs` `a` join `othubdb`.`blockchains` `b` on((`sync_gnosis_mainnet`.`a`.`chain_id` = `b`.`chain_id`))) order by `sync_gnosis_mainnet`.`a`.`block_date` desc,`sync_gnosis_mainnet`.`a`.`block_ts_hour` desc limit 1000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_activity_last1min`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_activity_last1min`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_activity_last1min` AS select `sync_otp_mainnet`.`v_pubs_activity_last1min`.`chain_id` AS `chain_id`,`sync_otp_mainnet`.`v_pubs_activity_last1min`.`signer` AS `signer`,`sync_otp_mainnet`.`v_pubs_activity_last1min`.`UAL` AS `UAL`,`sync_otp_mainnet`.`v_pubs_activity_last1min`.`datetime` AS `datetime`,`sync_otp_mainnet`.`v_pubs_activity_last1min`.`assetContractId` AS `assetContractId`,`sync_otp_mainnet`.`v_pubs_activity_last1min`.`tokenId` AS `tokenId`,`sync_otp_mainnet`.`v_pubs_activity_last1min`.`transactionHash` AS `transactionHash`,`sync_otp_mainnet`.`v_pubs_activity_last1min`.`eventName` AS `eventName`,`sync_otp_mainnet`.`v_pubs_activity_last1min`.`eventValue1` AS `eventValue1` from `sync_otp_mainnet`.`v_pubs_activity_last1min` union all select `sync_gnosis_mainnet`.`v_pubs_activity_last1min`.`chain_id` AS `chain_id`,`sync_gnosis_mainnet`.`v_pubs_activity_last1min`.`signer` AS `signer`,`sync_gnosis_mainnet`.`v_pubs_activity_last1min`.`UAL` AS `UAL`,`sync_gnosis_mainnet`.`v_pubs_activity_last1min`.`datetime` AS `datetime`,`sync_gnosis_mainnet`.`v_pubs_activity_last1min`.`assetContractId` AS `assetContractId`,`sync_gnosis_mainnet`.`v_pubs_activity_last1min`.`tokenId` AS `tokenId`,`sync_gnosis_mainnet`.`v_pubs_activity_last1min`.`transactionHash` AS `transactionHash`,`sync_gnosis_mainnet`.`v_pubs_activity_last1min`.`eventName` AS `eventName`,`sync_gnosis_mainnet`.`v_pubs_activity_last1min`.`eventValue1` AS `eventValue1` from `sync_gnosis_mainnet`.`v_pubs_activity_last1min` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_activity_last24h`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_activity_last24h`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_activity_last24h` AS select `sync_otp_mainnet`.`v_pubs_activity_last24h`.`chain_id` AS `chain_id`,`sync_otp_mainnet`.`v_pubs_activity_last24h`.`signer` AS `signer`,`sync_otp_mainnet`.`v_pubs_activity_last24h`.`UAL` AS `UAL`,`sync_otp_mainnet`.`v_pubs_activity_last24h`.`datetime` AS `datetime`,`sync_otp_mainnet`.`v_pubs_activity_last24h`.`assetContractId` AS `assetContractId`,`sync_otp_mainnet`.`v_pubs_activity_last24h`.`tokenId` AS `tokenId`,`sync_otp_mainnet`.`v_pubs_activity_last24h`.`transactionHash` AS `transactionHash`,`sync_otp_mainnet`.`v_pubs_activity_last24h`.`eventName` AS `eventName`,`sync_otp_mainnet`.`v_pubs_activity_last24h`.`eventValue1` AS `eventValue1` from `sync_otp_mainnet`.`v_pubs_activity_last24h` union all select `sync_gnosis_mainnet`.`v_pubs_activity_last24h`.`chain_id` AS `chain_id`,`sync_gnosis_mainnet`.`v_pubs_activity_last24h`.`signer` AS `signer`,`sync_gnosis_mainnet`.`v_pubs_activity_last24h`.`UAL` AS `UAL`,`sync_gnosis_mainnet`.`v_pubs_activity_last24h`.`datetime` AS `datetime`,`sync_gnosis_mainnet`.`v_pubs_activity_last24h`.`assetContractId` AS `assetContractId`,`sync_gnosis_mainnet`.`v_pubs_activity_last24h`.`tokenId` AS `tokenId`,`sync_gnosis_mainnet`.`v_pubs_activity_last24h`.`transactionHash` AS `transactionHash`,`sync_gnosis_mainnet`.`v_pubs_activity_last24h`.`eventName` AS `eventName`,`sync_gnosis_mainnet`.`v_pubs_activity_last24h`.`eventValue1` AS `eventValue1` from `sync_gnosis_mainnet`.`v_pubs_activity_last24h` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_daily`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_daily`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_daily` AS with `combined_0` as (select `sync_otp_mainnet`.`stats_pub`.`block_date` AS `block_date`,sum(`sync_otp_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_mainnet`.`stats_pub` group by `sync_otp_mainnet`.`stats_pub`.`block_date` union all select `sync_gnosis_mainnet`.`stats_pub`.`block_date` AS `block_date`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_mainnet`.`stats_pub` group by `sync_gnosis_mainnet`.`stats_pub`.`block_date`) select `a`.`block_date` AS `date`,ifnull((sum(`a`.`total_size`) / sum(`a`.`total_pubs`)),0) AS `avgPubSize`,ifnull((sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)),0) AS `avgEpochsNumber`,ifnull((sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)),0) AS `avgPubPrice`,ifnull((sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)),0) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,ifnull(round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0),0) AS `privatePubsPercentage`,sum(sum(`a`.`total_trac_spent`)) OVER (ORDER BY `a`.`block_date` )  AS `cumulativeTotalTracSpent`,sum(sum(`a`.`total_pubs`)) OVER (ORDER BY `a`.`block_date` )  AS `cumulativePubs` from `combined_0` `a` group by `a`.`block_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_hourly`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_hourly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_hourly` AS with `combined_0` as (select `sync_otp_mainnet`.`stats_pub`.`block_date` AS `block_date`,`sync_otp_mainnet`.`stats_pub`.`block_ts_hour` AS `block_ts_hour`,`sync_otp_mainnet`.`stats_pub`.`total_size` AS `total_size`,`sync_otp_mainnet`.`stats_pub`.`total_epochs` AS `total_epochs`,`sync_otp_mainnet`.`stats_pub`.`total_bid` AS `total_bid`,`sync_otp_mainnet`.`stats_pub`.`total_pubs` AS `total_pubs`,`sync_otp_mainnet`.`stats_pub`.`total_trac_spent` AS `total_trac_spent`,`sync_otp_mainnet`.`stats_pub`.`private_pubs` AS `private_pubs` from `sync_otp_mainnet`.`stats_pub` union all select `sync_gnosis_mainnet`.`stats_pub`.`block_date` AS `block_date`,`sync_gnosis_mainnet`.`stats_pub`.`block_ts_hour` AS `block_ts_hour`,`sync_gnosis_mainnet`.`stats_pub`.`total_size` AS `total_size`,`sync_gnosis_mainnet`.`stats_pub`.`total_epochs` AS `total_epochs`,`sync_gnosis_mainnet`.`stats_pub`.`total_bid` AS `total_bid`,`sync_gnosis_mainnet`.`stats_pub`.`total_pubs` AS `total_pubs`,`sync_gnosis_mainnet`.`stats_pub`.`total_trac_spent` AS `total_trac_spent`,`sync_gnosis_mainnet`.`stats_pub`.`private_pubs` AS `private_pubs` from `sync_gnosis_mainnet`.`stats_pub`) select `a`.`block_date` AS `date`,`a`.`block_ts_hour` AS `datetime`,ifnull((sum(`a`.`total_size`) / sum(`a`.`total_pubs`)),0) AS `avgPubSize`,ifnull((sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)),0) AS `avgEpochsNumber`,ifnull((sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)),0) AS `avgPubPrice`,ifnull((sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)),0) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,round((ifnull((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)),0) * 100),0) AS `privatePubsPercentage`,sum(sum(`a`.`total_trac_spent`)) OVER (ORDER BY `a`.`block_date`,`a`.`block_ts_hour` )  AS `cumulativeTotalTracSpent`,sum(sum(`a`.`total_pubs`)) OVER (ORDER BY `a`.`block_date`,`a`.`block_ts_hour` )  AS `cumulativePubs` from `combined_0` `a` group by `a`.`block_date`,`a`.`block_ts_hour` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_last1h`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last1h`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_last1h` AS with `combined_0` as (select `sync_otp_mainnet`.`staging_pub`.`size` AS `size`,`sync_otp_mainnet`.`staging_pub`.`epochs_number` AS `epochs_number`,`sync_otp_mainnet`.`staging_pub`.`token_amount` AS `token_amount`,`sync_otp_mainnet`.`staging_pub`.`bid` AS `bid` from `sync_otp_mainnet`.`staging_pub` where ((`sync_otp_mainnet`.`staging_pub`.`block_date` >= (select cast((`sync_otp_mainnet`.`v_sys_staging_date`.`block_ts` + interval -(1) day) as date) from `sync_otp_mainnet`.`v_sys_staging_date`)) and (`sync_otp_mainnet`.`staging_pub`.`block_ts_hour` >= (select (`sync_otp_mainnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(2) hour) from `sync_otp_mainnet`.`v_sys_staging_date`)) and (`sync_otp_mainnet`.`staging_pub`.`block_ts` >= (select (`sync_otp_mainnet`.`v_sys_staging_date`.`block_ts` + interval -(60) minute) from `sync_otp_mainnet`.`v_sys_staging_date`))) union all select `sync_gnosis_mainnet`.`staging_pub`.`size` AS `size`,`sync_gnosis_mainnet`.`staging_pub`.`epochs_number` AS `epochs_number`,`sync_gnosis_mainnet`.`staging_pub`.`token_amount` AS `token_amount`,`sync_gnosis_mainnet`.`staging_pub`.`bid` AS `bid` from `sync_gnosis_mainnet`.`staging_pub` where ((`sync_gnosis_mainnet`.`staging_pub`.`block_date` >= (select cast((`sync_gnosis_mainnet`.`v_sys_staging_date`.`block_ts` + interval -(1) day) as date) from `sync_gnosis_mainnet`.`v_sys_staging_date`)) and (`sync_gnosis_mainnet`.`staging_pub`.`block_ts_hour` >= (select (`sync_gnosis_mainnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(2) hour) from `sync_gnosis_mainnet`.`v_sys_staging_date`)) and (`sync_gnosis_mainnet`.`staging_pub`.`block_ts` >= (select (`sync_gnosis_mainnet`.`v_sys_staging_date`.`block_ts` + interval -(60) minute) from `sync_gnosis_mainnet`.`v_sys_staging_date`)))) select (select `sync_otp_mainnet`.`v_sys_staging_date`.`block_ts` from `sync_otp_mainnet`.`v_sys_staging_date`) AS `datetime`,ifnull(avg(`a`.`size`),0) AS `avgPubSize`,ifnull(avg(`a`.`epochs_number`),0) AS `avgEpochsNumber`,ifnull(avg(`a`.`token_amount`),0) AS `avgPubPrice`,ifnull(avg(`a`.`bid`),0) AS `avgBid`,count(0) AS `totalPubs`,ifnull(sum(`a`.`token_amount`),0) AS `totalTracSpent`,round(((sum((case when (`a`.`size` = 145) then 1 else 0 end)) / count(0)) * 100),0) AS `privatePubsPercentage` from `combined_0` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_last24h`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last24h`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_last24h` AS with `combined_0` as (select sum(`sync_otp_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_mainnet`.`stats_pub` where ((`sync_otp_mainnet`.`stats_pub`.`block_date` >= (select cast((`sync_otp_mainnet`.`v_sys_staging_date`.`block_date` + interval -(1) day) as date) from `sync_otp_mainnet`.`v_sys_staging_date`)) and (`sync_otp_mainnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_otp_mainnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(24) hour) from `sync_otp_mainnet`.`v_sys_staging_date`))) union all select sum(`sync_gnosis_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_mainnet`.`stats_pub` where ((`sync_gnosis_mainnet`.`stats_pub`.`block_date` >= (select cast((`sync_gnosis_mainnet`.`v_sys_staging_date`.`block_date` + interval -(1) day) as date) from `sync_gnosis_mainnet`.`v_sys_staging_date`)) and (`sync_gnosis_mainnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_gnosis_mainnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(24) hour) from `sync_gnosis_mainnet`.`v_sys_staging_date`)))) select (select `sync_otp_mainnet`.`v_sys_staging_date`.`block_ts` from `sync_otp_mainnet`.`v_sys_staging_date`) AS `datetime`,(sum(`a`.`total_size`) / sum(`a`.`total_pubs`)) AS `avgPubSize`,(sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)) AS `avgEpochsNumber`,(sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)) AS `avgPubPrice`,(sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0) AS `privatePubsPercentage` from `combined_0` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_last30d`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last30d`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_last30d` AS with `combined_0` as (select sum(`sync_otp_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_mainnet`.`stats_pub` where ((`sync_otp_mainnet`.`stats_pub`.`block_date` >= (select cast((`sync_otp_mainnet`.`v_sys_staging_date`.`block_date` + interval -(31) day) as date) from `sync_otp_mainnet`.`v_sys_staging_date`)) and (`sync_otp_mainnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_otp_mainnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(720) hour) from `sync_otp_mainnet`.`v_sys_staging_date`))) union all select sum(`sync_gnosis_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_mainnet`.`stats_pub` where ((`sync_gnosis_mainnet`.`stats_pub`.`block_date` >= (select cast((`sync_gnosis_mainnet`.`v_sys_staging_date`.`block_date` + interval -(31) day) as date) from `sync_gnosis_mainnet`.`v_sys_staging_date`)) and (`sync_gnosis_mainnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_gnosis_mainnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(720) hour) from `sync_gnosis_mainnet`.`v_sys_staging_date`)))) select (select `sync_otp_mainnet`.`v_sys_staging_date`.`block_ts` from `sync_otp_mainnet`.`v_sys_staging_date`) AS `datetime`,(sum(`a`.`total_size`) / sum(`a`.`total_pubs`)) AS `avgPubSize`,(sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)) AS `avgEpochsNumber`,(sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)) AS `avgPubPrice`,(sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0) AS `privatePubsPercentage` from `combined_0` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_last7d`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last7d`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_last7d` AS with `combined_0` as (select sum(`sync_otp_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_mainnet`.`stats_pub` where ((`sync_otp_mainnet`.`stats_pub`.`block_date` >= (select cast((`sync_otp_mainnet`.`v_sys_staging_date`.`block_date` + interval -(8) day) as date) from `sync_otp_mainnet`.`v_sys_staging_date`)) and (`sync_otp_mainnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_otp_mainnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(168) hour) from `sync_otp_mainnet`.`v_sys_staging_date`))) union all select sum(`sync_gnosis_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_mainnet`.`stats_pub` where ((`sync_gnosis_mainnet`.`stats_pub`.`block_date` >= (select cast((`sync_gnosis_mainnet`.`v_sys_staging_date`.`block_date` + interval -(8) day) as date) from `sync_gnosis_mainnet`.`v_sys_staging_date`)) and (`sync_gnosis_mainnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_gnosis_mainnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(168) hour) from `sync_gnosis_mainnet`.`v_sys_staging_date`)))) select (select `sync_otp_mainnet`.`v_sys_staging_date`.`block_ts` from `sync_otp_mainnet`.`v_sys_staging_date`) AS `datetime`,(sum(`a`.`total_size`) / sum(`a`.`total_pubs`)) AS `avgPubSize`,(sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)) AS `avgEpochsNumber`,(sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)) AS `avgPubPrice`,(sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0) AS `privatePubsPercentage` from `combined_0` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_monthly`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_monthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_monthly` AS with `combined_0` as (select `sync_otp_mainnet`.`stats_pub`.`block_date` AS `block_date`,sum(`sync_otp_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_mainnet`.`stats_pub` group by `sync_otp_mainnet`.`stats_pub`.`block_date` union all select `sync_gnosis_mainnet`.`stats_pub`.`block_date` AS `block_date`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_mainnet`.`stats_pub` group by `sync_gnosis_mainnet`.`stats_pub`.`block_date`) select date_format(`a`.`block_date`,'%Y-%m-01') AS `date`,ifnull((sum(`a`.`total_size`) / sum(`a`.`total_pubs`)),0) AS `avgPubSize`,ifnull((sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)),0) AS `avgEpochsNumber`,ifnull((sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)),0) AS `avgPubPrice`,ifnull((sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)),0) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,ifnull(round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0),0) AS `privatePubsPercentage`,sum(sum(`a`.`total_trac_spent`)) OVER (ORDER BY date_format(`a`.`block_date`,'%Y-%m-01') )  AS `cumulativeTotalTracSpent`,sum(sum(`a`.`total_pubs`)) OVER (ORDER BY date_format(`a`.`block_date`,'%Y-%m-01') )  AS `cumulativePubs` from `combined_0` `a` group by date_format(`a`.`block_date`,'%Y-%m-01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_total`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_total` AS with `combined_0` as (select sum(`sync_otp_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_mainnet`.`stats_pub` union all select sum(`sync_gnosis_mainnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_mainnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_mainnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_mainnet`.`stats_pub`) select (sum(`a`.`total_size`) / sum(`a`.`total_pubs`)) AS `avgPubSize`,(sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)) AS `avgEpochsNumber`,(sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)) AS `avgPubPrice`,(sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0) AS `privatePubsPercentage` from `combined_0` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25  9:40:13
CREATE DATABASE  IF NOT EXISTS `dkg_testnet` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dkg_testnet`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dkg_testnet
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `v_nodes`
--

DROP TABLE IF EXISTS `v_nodes`;
/*!50001 DROP VIEW IF EXISTS `v_nodes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_nodes` AS SELECT 
 1 AS `chainName`,
 1 AS `chainId`,
 1 AS `nodeId`,
 1 AS `networkId`,
 1 AS `tokenName`,
 1 AS `tokenSymbol`,
 1 AS `nodeOwner`,
 1 AS `nodeGroup`,
 1 AS `createProfile_adminWallet`,
 1 AS `createProfile_adminWallet_hash`,
 1 AS `current_adminWallet_hashes`,
 1 AS `createProfile_blockNumber`,
 1 AS `createProfile_txHash`,
 1 AS `createProfile_ts`,
 1 AS `createProfile_date`,
 1 AS `nodeAgeDays`,
 1 AS `nodeStake`,
 1 AS `nodeAsk`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_nodes_activity_last1min`
--

DROP TABLE IF EXISTS `v_nodes_activity_last1min`;
/*!50001 DROP VIEW IF EXISTS `v_nodes_activity_last1min`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_nodes_activity_last1min` AS SELECT 
 1 AS `chain_id`,
 1 AS `nodeId`,
 1 AS `tokenName`,
 1 AS `tokenSymbol`,
 1 AS `UAL`,
 1 AS `datetime`,
 1 AS `assetContractId`,
 1 AS `tokenId`,
 1 AS `transactionHash`,
 1 AS `eventName`,
 1 AS `eventValue1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_nodes_stats_grouped_daily`
--

DROP TABLE IF EXISTS `v_nodes_stats_grouped_daily`;
/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_daily`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_nodes_stats_grouped_daily` AS SELECT 
 1 AS `date`,
 1 AS `estimatedEarnings1stEpochOnly`,
 1 AS `estimatedEarnings2plusEpochs`,
 1 AS `commitsSubmitted1stEpochOnly`,
 1 AS `cumulativeCommitsSubmitted1stEpochOnly`,
 1 AS `commitsSubmitted2plusEpochs`,
 1 AS `cumulativeCommitsSubmitted2plusEpochs`,
 1 AS `payouts`,
 1 AS `cumulativePayouts`,
 1 AS `proofsSubmitted`,
 1 AS `cumulativeProofsSubmitted`,
 1 AS `combinedNodesStake`,
 1 AS `avgNodeStake`,
 1 AS `nodesWithMoreThan50kStake`,
 1 AS `nodesWithLessThan50kStake`,
 1 AS `combinedAsk`,
 1 AS `avgAsk`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_nodes_stats_grouped_hourly_7d`
--

DROP TABLE IF EXISTS `v_nodes_stats_grouped_hourly_7d`;
/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_hourly_7d`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_nodes_stats_grouped_hourly_7d` AS SELECT 
 1 AS `date`,
 1 AS `datetime`,
 1 AS `estimatedEarnings1stEpochOnly`,
 1 AS `estimatedEarnings2plusEpochs`,
 1 AS `commitsSubmitted1stEpochOnly`,
 1 AS `cumulativeCommitsSubmitted1stEpochOnly`,
 1 AS `commitsSubmitted2plusEpochs`,
 1 AS `cumulativeCommitsSubmitted2plusEpochs`,
 1 AS `payouts`,
 1 AS `cumulativePayouts`,
 1 AS `proofsSubmitted`,
 1 AS `cumulativeProofsSubmitted`,
 1 AS `combinedNodesStake`,
 1 AS `avgNodeStake`,
 1 AS `nodesWithMoreThan50kStake`,
 1 AS `nodesWithLessThan50kStake`,
 1 AS `combinedAsk`,
 1 AS `avgAsk`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_nodes_stats_grouped_monthly`
--

DROP TABLE IF EXISTS `v_nodes_stats_grouped_monthly`;
/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_monthly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_nodes_stats_grouped_monthly` AS SELECT 
 1 AS `date`,
 1 AS `estimatedEarnings1stEpochOnly`,
 1 AS `estimatedEarnings2plusEpochs`,
 1 AS `commitsSubmitted1stEpochOnly`,
 1 AS `cumulativeCommitsSubmitted1stEpochOnly`,
 1 AS `commitsSubmitted2plusEpochs`,
 1 AS `cumulativeCommitsSubmitted2plusEpochs`,
 1 AS `payouts`,
 1 AS `cumulativePayouts`,
 1 AS `proofsSubmitted`,
 1 AS `cumulativeProofsSubmitted`,
 1 AS `combinedNodesStake`,
 1 AS `avgNodeStake`,
 1 AS `nodesWithMoreThan50kStake`,
 1 AS `nodesWithLessThan50kStake`,
 1 AS `combinedAsk`,
 1 AS `avgAsk`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_nodes_stats_grouped_total`
--

DROP TABLE IF EXISTS `v_nodes_stats_grouped_total`;
/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_nodes_stats_grouped_total` AS SELECT 
 1 AS `estimatedEarnings1stEpochOnly`,
 1 AS `estimatedEarnings2plusEpochs`,
 1 AS `commitsSubmitted1stEpochOnly`,
 1 AS `commitsSubmitted2plusEpochs`,
 1 AS `payouts`,
 1 AS `proofsSubmitted`,
 1 AS `combinedNodesStake`,
 1 AS `avgNodeStake`,
 1 AS `nodesWithMoreThan50kStake`,
 1 AS `nodesWithLessThan50kStake`,
 1 AS `combinedAsk`,
 1 AS `avgAsk`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs`
--

DROP TABLE IF EXISTS `v_pubs`;
/*!50001 DROP VIEW IF EXISTS `v_pubs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs` AS SELECT 
 1 AS `chain_name`,
 1 AS `contract_address`,
 1 AS `token_id`,
 1 AS `keyword`,
 1 AS `UAL`,
 1 AS `chain_id`,
 1 AS `size`,
 1 AS `triples_number`,
 1 AS `chunks_number`,
 1 AS `hash_function_id`,
 1 AS `epochs_number`,
 1 AS `epoch_length`,
 1 AS `epoch_length_days`,
 1 AS `token_amount`,
 1 AS `bid`,
 1 AS `transaction_hash`,
 1 AS `transaction_index`,
 1 AS `block_number`,
 1 AS `block_timestamp`,
 1 AS `block_ts`,
 1 AS `block_date`,
 1 AS `block_ts_hour`,
 1 AS `state_index`,
 1 AS `state`,
 1 AS `previous_states`,
 1 AS `publisher`,
 1 AS `publisher_short`,
 1 AS `owner`,
 1 AS `winners`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_activity_last1min`
--

DROP TABLE IF EXISTS `v_pubs_activity_last1min`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_activity_last1min`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_activity_last1min` AS SELECT 
 1 AS `chain_id`,
 1 AS `signer`,
 1 AS `UAL`,
 1 AS `datetime`,
 1 AS `assetContractId`,
 1 AS `tokenId`,
 1 AS `transactionHash`,
 1 AS `eventName`,
 1 AS `eventValue1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_activity_last24h`
--

DROP TABLE IF EXISTS `v_pubs_activity_last24h`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_activity_last24h`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_activity_last24h` AS SELECT 
 1 AS `chain_id`,
 1 AS `signer`,
 1 AS `UAL`,
 1 AS `datetime`,
 1 AS `assetContractId`,
 1 AS `tokenId`,
 1 AS `transactionHash`,
 1 AS `eventName`,
 1 AS `eventValue1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_daily`
--

DROP TABLE IF EXISTS `v_pubs_stats_daily`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_daily`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_daily` AS SELECT 
 1 AS `date`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`,
 1 AS `cumulativeTotalTracSpent`,
 1 AS `cumulativePubs`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_hourly`
--

DROP TABLE IF EXISTS `v_pubs_stats_hourly`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_hourly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_hourly` AS SELECT 
 1 AS `date`,
 1 AS `datetime`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`,
 1 AS `cumulativeTotalTracSpent`,
 1 AS `cumulativePubs`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_last1h`
--

DROP TABLE IF EXISTS `v_pubs_stats_last1h`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last1h`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_last1h` AS SELECT 
 1 AS `datetime`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_last24h`
--

DROP TABLE IF EXISTS `v_pubs_stats_last24h`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last24h`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_last24h` AS SELECT 
 1 AS `datetime`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_last30d`
--

DROP TABLE IF EXISTS `v_pubs_stats_last30d`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last30d`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_last30d` AS SELECT 
 1 AS `datetime`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_last7d`
--

DROP TABLE IF EXISTS `v_pubs_stats_last7d`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last7d`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_last7d` AS SELECT 
 1 AS `datetime`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_monthly`
--

DROP TABLE IF EXISTS `v_pubs_stats_monthly`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_monthly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_monthly` AS SELECT 
 1 AS `date`,
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`,
 1 AS `cumulativeTotalTracSpent`,
 1 AS `cumulativePubs`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_pubs_stats_total`
--

DROP TABLE IF EXISTS `v_pubs_stats_total`;
/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pubs_stats_total` AS SELECT 
 1 AS `avgPubSize`,
 1 AS `avgEpochsNumber`,
 1 AS `avgPubPrice`,
 1 AS `avgBid`,
 1 AS `totalPubs`,
 1 AS `totalTracSpent`,
 1 AS `privatePubsPercentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'dkg_testnet'
--

--
-- Dumping routines for database 'dkg_testnet'
--

--
-- Final view structure for view `v_nodes`
--

/*!50001 DROP VIEW IF EXISTS `v_nodes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nodes` AS select `ch`.`chain_name` AS `chainName`,`b`.`chain_id` AS `chainId`,`sync_otp_testnet`.`a`.`nodeId` AS `nodeId`,`sync_otp_testnet`.`a`.`networkId` AS `networkId`,`sync_otp_testnet`.`a`.`tokenName` AS `tokenName`,`sync_otp_testnet`.`a`.`tokenSymbol` AS `tokenSymbol`,`sync_otp_testnet`.`a`.`nodeOwner` AS `nodeOwner`,`sync_otp_testnet`.`a`.`nodeGroup` AS `nodeGroup`,`sync_otp_testnet`.`a`.`createProfile_adminWallet` AS `createProfile_adminWallet`,`sync_otp_testnet`.`a`.`createProfile_adminWallet_hash` AS `createProfile_adminWallet_hash`,`sync_otp_testnet`.`a`.`current_adminWallet_hashes` AS `current_adminWallet_hashes`,`sync_otp_testnet`.`a`.`createProfile_blockNumber` AS `createProfile_blockNumber`,`sync_otp_testnet`.`a`.`createProfile_txHash` AS `createProfile_txHash`,`sync_otp_testnet`.`a`.`createProfile_ts` AS `createProfile_ts`,`sync_otp_testnet`.`a`.`createProfile_date` AS `createProfile_date`,`sync_otp_testnet`.`a`.`nodeAgeDays` AS `nodeAgeDays`,`sync_otp_testnet`.`a`.`nodeStake` AS `nodeStake`,`sync_otp_testnet`.`a`.`nodeAsk` AS `nodeAsk` from ((`sync_otp_testnet`.`v_nodes` `a` join (select `sync_otp_testnet`.`profile_tx`.`chain_id` AS `chain_id` from `sync_otp_testnet`.`profile_tx` limit 1) `b`) join `othubdb`.`blockchains` `ch` on((`b`.`chain_id` = `ch`.`chain_id`))) union all select `ch`.`chain_name` AS `chainName`,`b`.`chain_id` AS `chainId`,`sync_gnosis_testnet`.`a`.`nodeId` AS `nodeId`,`sync_gnosis_testnet`.`a`.`networkId` AS `networkId`,`sync_gnosis_testnet`.`a`.`tokenName` AS `tokenName`,`sync_gnosis_testnet`.`a`.`tokenSymbol` AS `tokenSymbol`,`sync_gnosis_testnet`.`a`.`nodeOwner` AS `nodeOwner`,`sync_gnosis_testnet`.`a`.`nodeGroup` AS `nodeGroup`,`sync_gnosis_testnet`.`a`.`createProfile_adminWallet` AS `createProfile_adminWallet`,`sync_gnosis_testnet`.`a`.`createProfile_adminWallet_hash` AS `createProfile_adminWallet_hash`,`sync_gnosis_testnet`.`a`.`current_adminWallet_hashes` AS `current_adminWallet_hashes`,`sync_gnosis_testnet`.`a`.`createProfile_blockNumber` AS `createProfile_blockNumber`,`sync_gnosis_testnet`.`a`.`createProfile_txHash` AS `createProfile_txHash`,`sync_gnosis_testnet`.`a`.`createProfile_ts` AS `createProfile_ts`,`sync_gnosis_testnet`.`a`.`createProfile_date` AS `createProfile_date`,`sync_gnosis_testnet`.`a`.`nodeAgeDays` AS `nodeAgeDays`,`sync_gnosis_testnet`.`a`.`nodeStake` AS `nodeStake`,`sync_gnosis_testnet`.`a`.`nodeAsk` AS `nodeAsk` from ((`sync_gnosis_testnet`.`v_nodes` `a` join (select `sync_gnosis_testnet`.`profile_tx`.`chain_id` AS `chain_id` from `sync_gnosis_testnet`.`profile_tx` limit 1) `b`) join `othubdb`.`blockchains` `ch` on((`b`.`chain_id` = `ch`.`chain_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_nodes_activity_last1min`
--

/*!50001 DROP VIEW IF EXISTS `v_nodes_activity_last1min`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nodes_activity_last1min` AS select `sync_otp_testnet`.`v_nodes_activity_last1min`.`chain_id` AS `chain_id`,`sync_otp_testnet`.`v_nodes_activity_last1min`.`nodeId` AS `nodeId`,`sync_otp_testnet`.`v_nodes_activity_last1min`.`tokenName` AS `tokenName`,`sync_otp_testnet`.`v_nodes_activity_last1min`.`tokenSymbol` AS `tokenSymbol`,`sync_otp_testnet`.`v_nodes_activity_last1min`.`UAL` AS `UAL`,`sync_otp_testnet`.`v_nodes_activity_last1min`.`datetime` AS `datetime`,`sync_otp_testnet`.`v_nodes_activity_last1min`.`assetContractId` AS `assetContractId`,`sync_otp_testnet`.`v_nodes_activity_last1min`.`tokenId` AS `tokenId`,`sync_otp_testnet`.`v_nodes_activity_last1min`.`transactionHash` AS `transactionHash`,`sync_otp_testnet`.`v_nodes_activity_last1min`.`eventName` AS `eventName`,`sync_otp_testnet`.`v_nodes_activity_last1min`.`eventValue1` AS `eventValue1` from `sync_otp_testnet`.`v_nodes_activity_last1min` union all select `sync_gnosis_testnet`.`v_nodes_activity_last1min`.`chain_id` AS `chain_id`,`sync_gnosis_testnet`.`v_nodes_activity_last1min`.`nodeId` AS `nodeId`,`sync_gnosis_testnet`.`v_nodes_activity_last1min`.`tokenName` AS `tokenName`,`sync_gnosis_testnet`.`v_nodes_activity_last1min`.`tokenSymbol` AS `tokenSymbol`,`sync_gnosis_testnet`.`v_nodes_activity_last1min`.`UAL` AS `UAL`,`sync_gnosis_testnet`.`v_nodes_activity_last1min`.`datetime` AS `datetime`,`sync_gnosis_testnet`.`v_nodes_activity_last1min`.`assetContractId` AS `assetContractId`,`sync_gnosis_testnet`.`v_nodes_activity_last1min`.`tokenId` AS `tokenId`,`sync_gnosis_testnet`.`v_nodes_activity_last1min`.`transactionHash` AS `transactionHash`,`sync_gnosis_testnet`.`v_nodes_activity_last1min`.`eventName` AS `eventName`,`sync_gnosis_testnet`.`v_nodes_activity_last1min`.`eventValue1` AS `eventValue1` from `sync_gnosis_testnet`.`v_nodes_activity_last1min` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_nodes_stats_grouped_daily`
--

/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_daily`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nodes_stats_grouped_daily` AS with `combined_0` as (select `ch`.`chain_name` AS `chainName`,`b`.`chain_id` AS `chainId`,`sync_otp_testnet`.`a`.`date` AS `date`,`sync_otp_testnet`.`a`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_otp_testnet`.`a`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_otp_testnet`.`a`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_otp_testnet`.`a`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_otp_testnet`.`a`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_otp_testnet`.`a`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_otp_testnet`.`a`.`payouts` AS `payouts`,`sync_otp_testnet`.`a`.`cumulativePayouts` AS `cumulativePayouts`,`sync_otp_testnet`.`a`.`proofsSubmitted` AS `proofsSubmitted`,`sync_otp_testnet`.`a`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_otp_testnet`.`a`.`combinedNodesStake` AS `combinedNodesStake`,`sync_otp_testnet`.`a`.`avgNodeStake` AS `avgNodeStake`,`sync_otp_testnet`.`a`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_otp_testnet`.`a`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_otp_testnet`.`a`.`combinedAsk` AS `combinedAsk`,`sync_otp_testnet`.`a`.`avgAsk` AS `avgAsk` from ((`sync_otp_testnet`.`v_nodes_stats_grouped_daily` `a` join (select `sync_otp_testnet`.`profile_tx`.`chain_id` AS `chain_id` from `sync_otp_testnet`.`profile_tx` limit 1) `b`) join `othubdb`.`blockchains` `ch` on((`b`.`chain_id` = `ch`.`chain_id`))) union all select `ch`.`chain_name` AS `chainName`,`b`.`chain_id` AS `chainId`,`sync_gnosis_testnet`.`a`.`date` AS `date`,`sync_gnosis_testnet`.`a`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_gnosis_testnet`.`a`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_gnosis_testnet`.`a`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_gnosis_testnet`.`a`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_gnosis_testnet`.`a`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_gnosis_testnet`.`a`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_gnosis_testnet`.`a`.`payouts` AS `payouts`,`sync_gnosis_testnet`.`a`.`cumulativePayouts` AS `cumulativePayouts`,`sync_gnosis_testnet`.`a`.`proofsSubmitted` AS `proofsSubmitted`,`sync_gnosis_testnet`.`a`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_gnosis_testnet`.`a`.`combinedNodesStake` AS `combinedNodesStake`,`sync_gnosis_testnet`.`a`.`avgNodeStake` AS `avgNodeStake`,`sync_gnosis_testnet`.`a`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_gnosis_testnet`.`a`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_gnosis_testnet`.`a`.`combinedAsk` AS `combinedAsk`,`sync_gnosis_testnet`.`a`.`avgAsk` AS `avgAsk` from ((`sync_gnosis_testnet`.`v_nodes_stats_grouped_daily` `a` join (select `sync_gnosis_testnet`.`profile_tx`.`chain_id` AS `chain_id` from `sync_gnosis_testnet`.`profile_tx` limit 1) `b`) join `othubdb`.`blockchains` `ch` on((`b`.`chain_id` = `ch`.`chain_id`)))) select `a`.`date` AS `date`,sum(`a`.`estimatedEarnings1stEpochOnly`) AS `estimatedEarnings1stEpochOnly`,sum(`a`.`estimatedEarnings2plusEpochs`) AS `estimatedEarnings2plusEpochs`,sum(`a`.`commitsSubmitted1stEpochOnly`) AS `commitsSubmitted1stEpochOnly`,sum(`a`.`cumulativeCommitsSubmitted1stEpochOnly`) AS `cumulativeCommitsSubmitted1stEpochOnly`,sum(`a`.`commitsSubmitted2plusEpochs`) AS `commitsSubmitted2plusEpochs`,sum(`a`.`cumulativeCommitsSubmitted2plusEpochs`) AS `cumulativeCommitsSubmitted2plusEpochs`,sum(`a`.`payouts`) AS `payouts`,sum(`a`.`cumulativePayouts`) AS `cumulativePayouts`,sum(`a`.`proofsSubmitted`) AS `proofsSubmitted`,sum(`a`.`cumulativeProofsSubmitted`) AS `cumulativeProofsSubmitted`,sum(`a`.`combinedNodesStake`) AS `combinedNodesStake`,(sum(`a`.`combinedNodesStake`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgNodeStake`,sum(`a`.`nodesWithMoreThan50kStake`) AS `nodesWithMoreThan50kStake`,sum(`a`.`nodesWithLessThan50kStake`) AS `nodesWithLessThan50kStake`,sum(`a`.`combinedAsk`) AS `combinedAsk`,(sum(`a`.`combinedAsk`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgAsk` from `combined_0` `a` group by `a`.`date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_nodes_stats_grouped_hourly_7d`
--

/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_hourly_7d`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nodes_stats_grouped_hourly_7d` AS select `a`.`date` AS `date`,`a`.`datetime` AS `datetime`,sum(`a`.`estimatedEarnings1stEpochOnly`) AS `estimatedEarnings1stEpochOnly`,sum(`a`.`estimatedEarnings2plusEpochs`) AS `estimatedEarnings2plusEpochs`,sum(`a`.`commitsSubmitted1stEpochOnly`) AS `commitsSubmitted1stEpochOnly`,sum(`a`.`cumulativeCommitsSubmitted1stEpochOnly`) AS `cumulativeCommitsSubmitted1stEpochOnly`,sum(`a`.`commitsSubmitted2plusEpochs`) AS `commitsSubmitted2plusEpochs`,sum(`a`.`cumulativeCommitsSubmitted2plusEpochs`) AS `cumulativeCommitsSubmitted2plusEpochs`,sum(`a`.`payouts`) AS `payouts`,sum(`a`.`cumulativePayouts`) AS `cumulativePayouts`,sum(`a`.`proofsSubmitted`) AS `proofsSubmitted`,sum(`a`.`cumulativeProofsSubmitted`) AS `cumulativeProofsSubmitted`,sum(`a`.`combinedNodesStake`) AS `combinedNodesStake`,(sum(`a`.`combinedNodesStake`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgNodeStake`,sum(`a`.`nodesWithMoreThan50kStake`) AS `nodesWithMoreThan50kStake`,sum(`a`.`nodesWithLessThan50kStake`) AS `nodesWithLessThan50kStake`,sum(`a`.`combinedAsk`) AS `combinedAsk`,(sum(`a`.`combinedAsk`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgAsk` from (select `sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`date` AS `date`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`datetime` AS `datetime`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`payouts` AS `payouts`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativePayouts` AS `cumulativePayouts`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`proofsSubmitted` AS `proofsSubmitted`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`combinedNodesStake` AS `combinedNodesStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`avgNodeStake` AS `avgNodeStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`combinedAsk` AS `combinedAsk`,`sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d`.`avgAsk` AS `avgAsk` from `sync_otp_testnet`.`v_nodes_stats_grouped_hourly_7d` union all select `sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`date` AS `date`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`datetime` AS `datetime`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`payouts` AS `payouts`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativePayouts` AS `cumulativePayouts`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`proofsSubmitted` AS `proofsSubmitted`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`combinedNodesStake` AS `combinedNodesStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`avgNodeStake` AS `avgNodeStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`combinedAsk` AS `combinedAsk`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`.`avgAsk` AS `avgAsk` from `sync_gnosis_testnet`.`v_nodes_stats_grouped_hourly_7d`) `a` group by `a`.`date`,`a`.`datetime` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_nodes_stats_grouped_monthly`
--

/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_monthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nodes_stats_grouped_monthly` AS select `a`.`date` AS `date`,sum(`a`.`estimatedEarnings1stEpochOnly`) AS `estimatedEarnings1stEpochOnly`,sum(`a`.`estimatedEarnings2plusEpochs`) AS `estimatedEarnings2plusEpochs`,sum(`a`.`commitsSubmitted1stEpochOnly`) AS `commitsSubmitted1stEpochOnly`,sum(`a`.`cumulativeCommitsSubmitted1stEpochOnly`) AS `cumulativeCommitsSubmitted1stEpochOnly`,sum(`a`.`commitsSubmitted2plusEpochs`) AS `commitsSubmitted2plusEpochs`,sum(`a`.`cumulativeCommitsSubmitted2plusEpochs`) AS `cumulativeCommitsSubmitted2plusEpochs`,sum(`a`.`payouts`) AS `payouts`,sum(`a`.`cumulativePayouts`) AS `cumulativePayouts`,sum(`a`.`proofsSubmitted`) AS `proofsSubmitted`,sum(`a`.`cumulativeProofsSubmitted`) AS `cumulativeProofsSubmitted`,sum(`a`.`combinedNodesStake`) AS `combinedNodesStake`,(sum(`a`.`combinedNodesStake`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgNodeStake`,sum(`a`.`nodesWithMoreThan50kStake`) AS `nodesWithMoreThan50kStake`,sum(`a`.`nodesWithLessThan50kStake`) AS `nodesWithLessThan50kStake`,sum(`a`.`combinedAsk`) AS `combinedAsk`,(sum(`a`.`combinedAsk`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgAsk` from (select `sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`date` AS `date`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`payouts` AS `payouts`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`cumulativePayouts` AS `cumulativePayouts`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`proofsSubmitted` AS `proofsSubmitted`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`combinedNodesStake` AS `combinedNodesStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`avgNodeStake` AS `avgNodeStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`combinedAsk` AS `combinedAsk`,`sync_otp_testnet`.`v_nodes_stats_grouped_monthly`.`avgAsk` AS `avgAsk` from `sync_otp_testnet`.`v_nodes_stats_grouped_monthly` union all select `sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`date` AS `date`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`cumulativeCommitsSubmitted1stEpochOnly` AS `cumulativeCommitsSubmitted1stEpochOnly`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`cumulativeCommitsSubmitted2plusEpochs` AS `cumulativeCommitsSubmitted2plusEpochs`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`payouts` AS `payouts`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`cumulativePayouts` AS `cumulativePayouts`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`proofsSubmitted` AS `proofsSubmitted`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`cumulativeProofsSubmitted` AS `cumulativeProofsSubmitted`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`combinedNodesStake` AS `combinedNodesStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`avgNodeStake` AS `avgNodeStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`combinedAsk` AS `combinedAsk`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`.`avgAsk` AS `avgAsk` from `sync_gnosis_testnet`.`v_nodes_stats_grouped_monthly`) `a` group by `a`.`date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_nodes_stats_grouped_total`
--

/*!50001 DROP VIEW IF EXISTS `v_nodes_stats_grouped_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nodes_stats_grouped_total` AS select sum(`a`.`estimatedEarnings1stEpochOnly`) AS `estimatedEarnings1stEpochOnly`,sum(`a`.`estimatedEarnings2plusEpochs`) AS `estimatedEarnings2plusEpochs`,sum(`a`.`commitsSubmitted1stEpochOnly`) AS `commitsSubmitted1stEpochOnly`,sum(`a`.`commitsSubmitted2plusEpochs`) AS `commitsSubmitted2plusEpochs`,sum(`a`.`payouts`) AS `payouts`,sum(`a`.`proofsSubmitted`) AS `proofsSubmitted`,sum(`a`.`combinedNodesStake`) AS `combinedNodesStake`,(sum(`a`.`combinedNodesStake`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgNodeStake`,sum(`a`.`nodesWithMoreThan50kStake`) AS `nodesWithMoreThan50kStake`,sum(`a`.`nodesWithLessThan50kStake`) AS `nodesWithLessThan50kStake`,sum(`a`.`combinedAsk`) AS `combinedAsk`,(sum(`a`.`combinedAsk`) / sum(`a`.`nodesWithMoreThan50kStake`)) AS `avgAsk` from (select `sync_otp_testnet`.`v_nodes_stats_grouped_total`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_otp_testnet`.`v_nodes_stats_grouped_total`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_otp_testnet`.`v_nodes_stats_grouped_total`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_otp_testnet`.`v_nodes_stats_grouped_total`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_otp_testnet`.`v_nodes_stats_grouped_total`.`payouts` AS `payouts`,`sync_otp_testnet`.`v_nodes_stats_grouped_total`.`proofsSubmitted` AS `proofsSubmitted`,`sync_otp_testnet`.`v_nodes_stats_grouped_total`.`combinedNodesStake` AS `combinedNodesStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_total`.`avgNodeStake` AS `avgNodeStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_total`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_total`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_otp_testnet`.`v_nodes_stats_grouped_total`.`combinedAsk` AS `combinedAsk`,`sync_otp_testnet`.`v_nodes_stats_grouped_total`.`avgAsk` AS `avgAsk` from `sync_otp_testnet`.`v_nodes_stats_grouped_total` union all select `sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`estimatedEarnings1stEpochOnly` AS `estimatedEarnings1stEpochOnly`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`estimatedEarnings2plusEpochs` AS `estimatedEarnings2plusEpochs`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`commitsSubmitted1stEpochOnly` AS `commitsSubmitted1stEpochOnly`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`commitsSubmitted2plusEpochs` AS `commitsSubmitted2plusEpochs`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`payouts` AS `payouts`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`proofsSubmitted` AS `proofsSubmitted`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`combinedNodesStake` AS `combinedNodesStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`avgNodeStake` AS `avgNodeStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`nodesWithMoreThan50kStake` AS `nodesWithMoreThan50kStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`nodesWithLessThan50kStake` AS `nodesWithLessThan50kStake`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`combinedAsk` AS `combinedAsk`,`sync_gnosis_testnet`.`v_nodes_stats_grouped_total`.`avgAsk` AS `avgAsk` from `sync_gnosis_testnet`.`v_nodes_stats_grouped_total`) `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs` AS (select `b`.`chain_name` AS `chain_name`,`sync_otp_testnet`.`a`.`contract_address` AS `contract_address`,`sync_otp_testnet`.`a`.`token_id` AS `token_id`,`sync_otp_testnet`.`a`.`keyword` AS `keyword`,`sync_otp_testnet`.`a`.`UAL` AS `UAL`,`sync_otp_testnet`.`a`.`chain_id` AS `chain_id`,`sync_otp_testnet`.`a`.`size` AS `size`,`sync_otp_testnet`.`a`.`triples_number` AS `triples_number`,`sync_otp_testnet`.`a`.`chunks_number` AS `chunks_number`,`sync_otp_testnet`.`a`.`hash_function_id` AS `hash_function_id`,`sync_otp_testnet`.`a`.`epochs_number` AS `epochs_number`,`sync_otp_testnet`.`a`.`epoch_length` AS `epoch_length`,`sync_otp_testnet`.`a`.`epoch_length_days` AS `epoch_length_days`,`sync_otp_testnet`.`a`.`token_amount` AS `token_amount`,`sync_otp_testnet`.`a`.`bid` AS `bid`,`sync_otp_testnet`.`a`.`transaction_hash` AS `transaction_hash`,`sync_otp_testnet`.`a`.`transaction_index` AS `transaction_index`,`sync_otp_testnet`.`a`.`block_number` AS `block_number`,`sync_otp_testnet`.`a`.`block_timestamp` AS `block_timestamp`,`sync_otp_testnet`.`a`.`block_ts` AS `block_ts`,`sync_otp_testnet`.`a`.`block_date` AS `block_date`,`sync_otp_testnet`.`a`.`block_ts_hour` AS `block_ts_hour`,`sync_otp_testnet`.`a`.`state_index` AS `state_index`,`sync_otp_testnet`.`a`.`state` AS `state`,`sync_otp_testnet`.`a`.`previous_states` AS `previous_states`,`sync_otp_testnet`.`a`.`publisher` AS `publisher`,`sync_otp_testnet`.`a`.`publisher_short` AS `publisher_short`,`sync_otp_testnet`.`a`.`owner` AS `owner`,`sync_otp_testnet`.`a`.`winners` AS `winners` from (`sync_otp_testnet`.`v_pubs` `a` join `othubdb`.`blockchains` `b` on((`sync_otp_testnet`.`a`.`chain_id` = `b`.`chain_id`))) order by `sync_otp_testnet`.`a`.`block_date` desc,`sync_otp_testnet`.`a`.`block_ts_hour` desc limit 1000) union all (select `b`.`chain_name` AS `chain_name`,`sync_gnosis_testnet`.`a`.`contract_address` AS `contract_address`,`sync_gnosis_testnet`.`a`.`token_id` AS `token_id`,`sync_gnosis_testnet`.`a`.`keyword` AS `keyword`,`sync_gnosis_testnet`.`a`.`UAL` AS `UAL`,`sync_gnosis_testnet`.`a`.`chain_id` AS `chain_id`,`sync_gnosis_testnet`.`a`.`size` AS `size`,`sync_gnosis_testnet`.`a`.`triples_number` AS `triples_number`,`sync_gnosis_testnet`.`a`.`chunks_number` AS `chunks_number`,`sync_gnosis_testnet`.`a`.`hash_function_id` AS `hash_function_id`,`sync_gnosis_testnet`.`a`.`epochs_number` AS `epochs_number`,`sync_gnosis_testnet`.`a`.`epoch_length` AS `epoch_length`,`sync_gnosis_testnet`.`a`.`epoch_length_days` AS `epoch_length_days`,`sync_gnosis_testnet`.`a`.`token_amount` AS `token_amount`,`sync_gnosis_testnet`.`a`.`bid` AS `bid`,`sync_gnosis_testnet`.`a`.`transaction_hash` AS `transaction_hash`,`sync_gnosis_testnet`.`a`.`transaction_index` AS `transaction_index`,`sync_gnosis_testnet`.`a`.`block_number` AS `block_number`,`sync_gnosis_testnet`.`a`.`block_timestamp` AS `block_timestamp`,`sync_gnosis_testnet`.`a`.`block_ts` AS `block_ts`,`sync_gnosis_testnet`.`a`.`block_date` AS `block_date`,`sync_gnosis_testnet`.`a`.`block_ts_hour` AS `block_ts_hour`,`sync_gnosis_testnet`.`a`.`state_index` AS `state_index`,`sync_gnosis_testnet`.`a`.`state` AS `state`,`sync_gnosis_testnet`.`a`.`previous_states` AS `previous_states`,`sync_gnosis_testnet`.`a`.`publisher` AS `publisher`,`sync_gnosis_testnet`.`a`.`publisher_short` AS `publisher_short`,`sync_gnosis_testnet`.`a`.`owner` AS `owner`,`sync_gnosis_testnet`.`a`.`winners` AS `winners` from (`sync_gnosis_testnet`.`v_pubs` `a` join `othubdb`.`blockchains` `b` on((`sync_gnosis_testnet`.`a`.`chain_id` = `b`.`chain_id`))) order by `sync_gnosis_testnet`.`a`.`block_date` desc,`sync_gnosis_testnet`.`a`.`block_ts_hour` desc limit 1000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_activity_last1min`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_activity_last1min`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_activity_last1min` AS select `sync_otp_testnet`.`v_pubs_activity_last1min`.`chain_id` AS `chain_id`,`sync_otp_testnet`.`v_pubs_activity_last1min`.`signer` AS `signer`,`sync_otp_testnet`.`v_pubs_activity_last1min`.`UAL` AS `UAL`,`sync_otp_testnet`.`v_pubs_activity_last1min`.`datetime` AS `datetime`,`sync_otp_testnet`.`v_pubs_activity_last1min`.`assetContractId` AS `assetContractId`,`sync_otp_testnet`.`v_pubs_activity_last1min`.`tokenId` AS `tokenId`,`sync_otp_testnet`.`v_pubs_activity_last1min`.`transactionHash` AS `transactionHash`,`sync_otp_testnet`.`v_pubs_activity_last1min`.`eventName` AS `eventName`,`sync_otp_testnet`.`v_pubs_activity_last1min`.`eventValue1` AS `eventValue1` from `sync_otp_testnet`.`v_pubs_activity_last1min` union all select `sync_gnosis_testnet`.`v_pubs_activity_last1min`.`chain_id` AS `chain_id`,`sync_gnosis_testnet`.`v_pubs_activity_last1min`.`signer` AS `signer`,`sync_gnosis_testnet`.`v_pubs_activity_last1min`.`UAL` AS `UAL`,`sync_gnosis_testnet`.`v_pubs_activity_last1min`.`datetime` AS `datetime`,`sync_gnosis_testnet`.`v_pubs_activity_last1min`.`assetContractId` AS `assetContractId`,`sync_gnosis_testnet`.`v_pubs_activity_last1min`.`tokenId` AS `tokenId`,`sync_gnosis_testnet`.`v_pubs_activity_last1min`.`transactionHash` AS `transactionHash`,`sync_gnosis_testnet`.`v_pubs_activity_last1min`.`eventName` AS `eventName`,`sync_gnosis_testnet`.`v_pubs_activity_last1min`.`eventValue1` AS `eventValue1` from `sync_gnosis_testnet`.`v_pubs_activity_last1min` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_activity_last24h`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_activity_last24h`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_activity_last24h` AS select `sync_otp_testnet`.`v_pubs_activity_last24h`.`chain_id` AS `chain_id`,`sync_otp_testnet`.`v_pubs_activity_last24h`.`signer` AS `signer`,`sync_otp_testnet`.`v_pubs_activity_last24h`.`UAL` AS `UAL`,`sync_otp_testnet`.`v_pubs_activity_last24h`.`datetime` AS `datetime`,`sync_otp_testnet`.`v_pubs_activity_last24h`.`assetContractId` AS `assetContractId`,`sync_otp_testnet`.`v_pubs_activity_last24h`.`tokenId` AS `tokenId`,`sync_otp_testnet`.`v_pubs_activity_last24h`.`transactionHash` AS `transactionHash`,`sync_otp_testnet`.`v_pubs_activity_last24h`.`eventName` AS `eventName`,`sync_otp_testnet`.`v_pubs_activity_last24h`.`eventValue1` AS `eventValue1` from `sync_otp_testnet`.`v_pubs_activity_last24h` union all select `sync_gnosis_testnet`.`v_pubs_activity_last24h`.`chain_id` AS `chain_id`,`sync_gnosis_testnet`.`v_pubs_activity_last24h`.`signer` AS `signer`,`sync_gnosis_testnet`.`v_pubs_activity_last24h`.`UAL` AS `UAL`,`sync_gnosis_testnet`.`v_pubs_activity_last24h`.`datetime` AS `datetime`,`sync_gnosis_testnet`.`v_pubs_activity_last24h`.`assetContractId` AS `assetContractId`,`sync_gnosis_testnet`.`v_pubs_activity_last24h`.`tokenId` AS `tokenId`,`sync_gnosis_testnet`.`v_pubs_activity_last24h`.`transactionHash` AS `transactionHash`,`sync_gnosis_testnet`.`v_pubs_activity_last24h`.`eventName` AS `eventName`,`sync_gnosis_testnet`.`v_pubs_activity_last24h`.`eventValue1` AS `eventValue1` from `sync_gnosis_testnet`.`v_pubs_activity_last24h` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_daily`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_daily`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_daily` AS with `combined_0` as (select `sync_otp_testnet`.`stats_pub`.`block_date` AS `block_date`,sum(`sync_otp_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_testnet`.`stats_pub` group by `sync_otp_testnet`.`stats_pub`.`block_date` union all select `sync_gnosis_testnet`.`stats_pub`.`block_date` AS `block_date`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_testnet`.`stats_pub` group by `sync_gnosis_testnet`.`stats_pub`.`block_date`) select `a`.`block_date` AS `date`,ifnull((sum(`a`.`total_size`) / sum(`a`.`total_pubs`)),0) AS `avgPubSize`,ifnull((sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)),0) AS `avgEpochsNumber`,ifnull((sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)),0) AS `avgPubPrice`,ifnull((sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)),0) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,ifnull(round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0),0) AS `privatePubsPercentage`,sum(sum(`a`.`total_trac_spent`)) OVER (ORDER BY `a`.`block_date` )  AS `cumulativeTotalTracSpent`,sum(sum(`a`.`total_pubs`)) OVER (ORDER BY `a`.`block_date` )  AS `cumulativePubs` from `combined_0` `a` group by `a`.`block_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_hourly`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_hourly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_hourly` AS with `combined_0` as (select `sync_otp_testnet`.`stats_pub`.`block_date` AS `block_date`,`sync_otp_testnet`.`stats_pub`.`block_ts_hour` AS `block_ts_hour`,`sync_otp_testnet`.`stats_pub`.`total_size` AS `total_size`,`sync_otp_testnet`.`stats_pub`.`total_epochs` AS `total_epochs`,`sync_otp_testnet`.`stats_pub`.`total_bid` AS `total_bid`,`sync_otp_testnet`.`stats_pub`.`total_pubs` AS `total_pubs`,`sync_otp_testnet`.`stats_pub`.`total_trac_spent` AS `total_trac_spent`,`sync_otp_testnet`.`stats_pub`.`private_pubs` AS `private_pubs` from `sync_otp_testnet`.`stats_pub` union all select `sync_gnosis_testnet`.`stats_pub`.`block_date` AS `block_date`,`sync_gnosis_testnet`.`stats_pub`.`block_ts_hour` AS `block_ts_hour`,`sync_gnosis_testnet`.`stats_pub`.`total_size` AS `total_size`,`sync_gnosis_testnet`.`stats_pub`.`total_epochs` AS `total_epochs`,`sync_gnosis_testnet`.`stats_pub`.`total_bid` AS `total_bid`,`sync_gnosis_testnet`.`stats_pub`.`total_pubs` AS `total_pubs`,`sync_gnosis_testnet`.`stats_pub`.`total_trac_spent` AS `total_trac_spent`,`sync_gnosis_testnet`.`stats_pub`.`private_pubs` AS `private_pubs` from `sync_gnosis_testnet`.`stats_pub`) select `a`.`block_date` AS `date`,`a`.`block_ts_hour` AS `datetime`,ifnull((sum(`a`.`total_size`) / sum(`a`.`total_pubs`)),0) AS `avgPubSize`,ifnull((sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)),0) AS `avgEpochsNumber`,ifnull((sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)),0) AS `avgPubPrice`,ifnull((sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)),0) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,round((ifnull((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)),0) * 100),0) AS `privatePubsPercentage`,sum(sum(`a`.`total_trac_spent`)) OVER (ORDER BY `a`.`block_date`,`a`.`block_ts_hour` )  AS `cumulativeTotalTracSpent`,sum(sum(`a`.`total_pubs`)) OVER (ORDER BY `a`.`block_date`,`a`.`block_ts_hour` )  AS `cumulativePubs` from `combined_0` `a` group by `a`.`block_date`,`a`.`block_ts_hour` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_last1h`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last1h`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_last1h` AS with `combined_0` as (select `sync_otp_testnet`.`staging_pub`.`size` AS `size`,`sync_otp_testnet`.`staging_pub`.`epochs_number` AS `epochs_number`,`sync_otp_testnet`.`staging_pub`.`token_amount` AS `token_amount`,`sync_otp_testnet`.`staging_pub`.`bid` AS `bid` from `sync_otp_testnet`.`staging_pub` where ((`sync_otp_testnet`.`staging_pub`.`block_date` >= (select cast((`sync_otp_testnet`.`v_sys_staging_date`.`block_ts` + interval -(1) day) as date) from `sync_otp_testnet`.`v_sys_staging_date`)) and (`sync_otp_testnet`.`staging_pub`.`block_ts_hour` >= (select (`sync_otp_testnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(2) hour) from `sync_otp_testnet`.`v_sys_staging_date`)) and (`sync_otp_testnet`.`staging_pub`.`block_ts` >= (select (`sync_otp_testnet`.`v_sys_staging_date`.`block_ts` + interval -(60) minute) from `sync_otp_testnet`.`v_sys_staging_date`))) union all select `sync_gnosis_testnet`.`staging_pub`.`size` AS `size`,`sync_gnosis_testnet`.`staging_pub`.`epochs_number` AS `epochs_number`,`sync_gnosis_testnet`.`staging_pub`.`token_amount` AS `token_amount`,`sync_gnosis_testnet`.`staging_pub`.`bid` AS `bid` from `sync_gnosis_testnet`.`staging_pub` where ((`sync_gnosis_testnet`.`staging_pub`.`block_date` >= (select cast((`sync_gnosis_testnet`.`v_sys_staging_date`.`block_ts` + interval -(1) day) as date) from `sync_gnosis_testnet`.`v_sys_staging_date`)) and (`sync_gnosis_testnet`.`staging_pub`.`block_ts_hour` >= (select (`sync_gnosis_testnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(2) hour) from `sync_gnosis_testnet`.`v_sys_staging_date`)) and (`sync_gnosis_testnet`.`staging_pub`.`block_ts` >= (select (`sync_gnosis_testnet`.`v_sys_staging_date`.`block_ts` + interval -(60) minute) from `sync_gnosis_testnet`.`v_sys_staging_date`)))) select (select `sync_otp_testnet`.`v_sys_staging_date`.`block_ts` from `sync_otp_testnet`.`v_sys_staging_date`) AS `datetime`,ifnull(avg(`a`.`size`),0) AS `avgPubSize`,ifnull(avg(`a`.`epochs_number`),0) AS `avgEpochsNumber`,ifnull(avg(`a`.`token_amount`),0) AS `avgPubPrice`,ifnull(avg(`a`.`bid`),0) AS `avgBid`,count(0) AS `totalPubs`,ifnull(sum(`a`.`token_amount`),0) AS `totalTracSpent`,round(((sum((case when (`a`.`size` = 145) then 1 else 0 end)) / count(0)) * 100),0) AS `privatePubsPercentage` from `combined_0` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_last24h`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last24h`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_last24h` AS with `combined_0` as (select sum(`sync_otp_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_testnet`.`stats_pub` where ((`sync_otp_testnet`.`stats_pub`.`block_date` >= (select cast((`sync_otp_testnet`.`v_sys_staging_date`.`block_date` + interval -(1) day) as date) from `sync_otp_testnet`.`v_sys_staging_date`)) and (`sync_otp_testnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_otp_testnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(24) hour) from `sync_otp_testnet`.`v_sys_staging_date`))) union all select sum(`sync_gnosis_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_testnet`.`stats_pub` where ((`sync_gnosis_testnet`.`stats_pub`.`block_date` >= (select cast((`sync_gnosis_testnet`.`v_sys_staging_date`.`block_date` + interval -(1) day) as date) from `sync_gnosis_testnet`.`v_sys_staging_date`)) and (`sync_gnosis_testnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_gnosis_testnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(24) hour) from `sync_gnosis_testnet`.`v_sys_staging_date`)))) select (select `sync_otp_testnet`.`v_sys_staging_date`.`block_ts` from `sync_otp_testnet`.`v_sys_staging_date`) AS `datetime`,(sum(`a`.`total_size`) / sum(`a`.`total_pubs`)) AS `avgPubSize`,(sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)) AS `avgEpochsNumber`,(sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)) AS `avgPubPrice`,(sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0) AS `privatePubsPercentage` from `combined_0` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_last30d`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last30d`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_last30d` AS with `combined_0` as (select sum(`sync_otp_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_testnet`.`stats_pub` where ((`sync_otp_testnet`.`stats_pub`.`block_date` >= (select cast((`sync_otp_testnet`.`v_sys_staging_date`.`block_date` + interval -(31) day) as date) from `sync_otp_testnet`.`v_sys_staging_date`)) and (`sync_otp_testnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_otp_testnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(720) hour) from `sync_otp_testnet`.`v_sys_staging_date`))) union all select sum(`sync_gnosis_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_testnet`.`stats_pub` where ((`sync_gnosis_testnet`.`stats_pub`.`block_date` >= (select cast((`sync_gnosis_testnet`.`v_sys_staging_date`.`block_date` + interval -(31) day) as date) from `sync_gnosis_testnet`.`v_sys_staging_date`)) and (`sync_gnosis_testnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_gnosis_testnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(720) hour) from `sync_gnosis_testnet`.`v_sys_staging_date`)))) select (select `sync_otp_testnet`.`v_sys_staging_date`.`block_ts` from `sync_otp_testnet`.`v_sys_staging_date`) AS `datetime`,(sum(`a`.`total_size`) / sum(`a`.`total_pubs`)) AS `avgPubSize`,(sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)) AS `avgEpochsNumber`,(sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)) AS `avgPubPrice`,(sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0) AS `privatePubsPercentage` from `combined_0` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_last7d`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_last7d`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_last7d` AS with `combined_0` as (select sum(`sync_otp_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_testnet`.`stats_pub` where ((`sync_otp_testnet`.`stats_pub`.`block_date` >= (select cast((`sync_otp_testnet`.`v_sys_staging_date`.`block_date` + interval -(8) day) as date) from `sync_otp_testnet`.`v_sys_staging_date`)) and (`sync_otp_testnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_otp_testnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(168) hour) from `sync_otp_testnet`.`v_sys_staging_date`))) union all select sum(`sync_gnosis_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_testnet`.`stats_pub` where ((`sync_gnosis_testnet`.`stats_pub`.`block_date` >= (select cast((`sync_gnosis_testnet`.`v_sys_staging_date`.`block_date` + interval -(8) day) as date) from `sync_gnosis_testnet`.`v_sys_staging_date`)) and (`sync_gnosis_testnet`.`stats_pub`.`block_ts_hour` >= (select (`sync_gnosis_testnet`.`v_sys_staging_date`.`block_ts_hour` + interval -(168) hour) from `sync_gnosis_testnet`.`v_sys_staging_date`)))) select (select `sync_otp_testnet`.`v_sys_staging_date`.`block_ts` from `sync_otp_testnet`.`v_sys_staging_date`) AS `datetime`,(sum(`a`.`total_size`) / sum(`a`.`total_pubs`)) AS `avgPubSize`,(sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)) AS `avgEpochsNumber`,(sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)) AS `avgPubPrice`,(sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0) AS `privatePubsPercentage` from `combined_0` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_monthly`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_monthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_monthly` AS with `combined_0` as (select `sync_otp_testnet`.`stats_pub`.`block_date` AS `block_date`,sum(`sync_otp_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_testnet`.`stats_pub` group by `sync_otp_testnet`.`stats_pub`.`block_date` union all select `sync_gnosis_testnet`.`stats_pub`.`block_date` AS `block_date`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_testnet`.`stats_pub` group by `sync_gnosis_testnet`.`stats_pub`.`block_date`) select date_format(`a`.`block_date`,'%Y-%m-01') AS `date`,ifnull((sum(`a`.`total_size`) / sum(`a`.`total_pubs`)),0) AS `avgPubSize`,ifnull((sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)),0) AS `avgEpochsNumber`,ifnull((sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)),0) AS `avgPubPrice`,ifnull((sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)),0) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,ifnull(round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0),0) AS `privatePubsPercentage`,sum(sum(`a`.`total_trac_spent`)) OVER (ORDER BY date_format(`a`.`block_date`,'%Y-%m-01') )  AS `cumulativeTotalTracSpent`,sum(sum(`a`.`total_pubs`)) OVER (ORDER BY date_format(`a`.`block_date`,'%Y-%m-01') )  AS `cumulativePubs` from `combined_0` `a` group by date_format(`a`.`block_date`,'%Y-%m-01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_pubs_stats_total`
--

/*!50001 DROP VIEW IF EXISTS `v_pubs_stats_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pubs_stats_total` AS with `combined_0` as (select sum(`sync_otp_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_otp_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_otp_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_otp_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_otp_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_otp_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_otp_testnet`.`stats_pub` union all select sum(`sync_gnosis_testnet`.`stats_pub`.`total_size`) AS `total_size`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_epochs`) AS `total_epochs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_bid`) AS `total_bid`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_pubs`) AS `total_pubs`,sum(`sync_gnosis_testnet`.`stats_pub`.`total_trac_spent`) AS `total_trac_spent`,sum(`sync_gnosis_testnet`.`stats_pub`.`private_pubs`) AS `private_pubs` from `sync_gnosis_testnet`.`stats_pub`) select (sum(`a`.`total_size`) / sum(`a`.`total_pubs`)) AS `avgPubSize`,(sum(`a`.`total_epochs`) / sum(`a`.`total_pubs`)) AS `avgEpochsNumber`,(sum(`a`.`total_trac_spent`) / sum(`a`.`total_pubs`)) AS `avgPubPrice`,(sum(`a`.`total_bid`) / sum(`a`.`total_pubs`)) AS `avgBid`,sum(`a`.`total_pubs`) AS `totalPubs`,sum(`a`.`total_trac_spent`) AS `totalTracSpent`,round(((sum(`a`.`private_pubs`) / sum(`a`.`total_pubs`)) * 100),0) AS `privatePubsPercentage` from `combined_0` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25  9:40:13
