#!/bin/bash

# This script will start a Nova Network node in your machine. You will still have
# to set up your sync enode with your validator key to connect to the mainnet.
# This script requires elevated access privileged (CHMOD 777), please run:
# chmod 777 startNode.sh before launching, and then bash start-node.sh to start.

# Welcome message.
echo "Welcome to Nova Network!"
echo ""
echo "Starting 1/2 - Configuring the network genesis block..."
novanetwork --datadir .dag init novanetwork
echo ""

# Starting Nova Network
echo "Starting 2/2 - Starting your Nova Network RPC node..."
novanetwork --datadir .dag --networkid "87" --rpc.allow-unprotected-txs --nodiscover --maxpeers "1" --syncmode "full" --ipcdisable --bootnodes "" --graphql --http.port "8545" --http --http.addr "0.0.0.0" --http.corsdomain "*" --http.api "eth,net,web3"  --ws --ws.addr "0.0.0.0" --ws.origins "*" --ws.api "eth,net,web3"