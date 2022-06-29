#!/usr/bin/env bash

if [ -f .env ]
then
  export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

forge create ./lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Proxy.sol:ERC1967Proxy \
 -i --rpc-url 'https://rinkeby.infura.io/v3/'${INFURA_API_KEY} --private-key ${PRIVATE_KEY} --verify \
 --constructor-args ${PIZZA_ADDRESS} ""