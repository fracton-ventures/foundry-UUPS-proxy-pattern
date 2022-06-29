# Foundry UUPS upgrades example
Uses OpenZeppelin UUPS proxy pattern.
## install
`forge install`

## test
`forge test`

## deploy and verify
### .env
PIZZA_ADDRESS is necessary, when deploying ERC1967Proxy.sol.
Set PIZZA_ADDRESS, after deploying Pizza.sol

```
INFURA_API_KEY=*****
PRIVATE_KEY=*****
ETHERSCAN_API_KEY=*****

PIZZA_ADDRESS=*****
```
### Pizza.sol
`source script/deploy-and-verify-pizza.sh `
### ERC1967Proxy.sol
`source script/deploy-and-verify-proxy.sh`
### PizzaV2.sol
`source script/deploy-and-verify-pizzaV2.sh`


## deployed proxy
ERC1967Proxy
https://rinkeby.etherscan.io/address/0xae1580b552be1ca4be1b6b9f20baaa393e1f4e04