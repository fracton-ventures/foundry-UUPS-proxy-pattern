#!/usr/bin/env bash

if [ -f .env ]
then
  export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

forge create ./src/PizzaV2.sol:PizzaV2 -i --rpc-url 'https://rinkeby.infura.io/v3/'${INFURA_API_KEY} --private-key ${PRIVATE_KEY} --verify