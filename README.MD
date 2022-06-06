# Foundry UUPS upgrades sample
Uses open zeppelin upgradeable contracts.
## install
`forge install`

## test
`forge test`

## deploy and verify
### Pizza.sol
`forge create --rpc-url  https://rinkeby.infura.io/v3/***** --private-key ***** src/Pizza.sol:Pizza --verify`
### ERC1967Proxy.sol
`forge create --rpc-url  https://rinkeby.infura.io/v3/***** --private-key *****  --constructor-args "<Pizza.sol deployed address>" "" --verify lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Proxy.sol:ERC1967Proxy`
### PizzaV2.sol
`forge create --rpc-url  https://rinkeby.infura.io/v3/***** --private-key ***** src/PizzaV2.sol:PizzaV2 --verify`


## deployed proxy
ERC1967Proxy
https://rinkeby.etherscan.io/address/0xae1580b552be1ca4be1b6b9f20baaa393e1f4e04