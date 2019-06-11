# Build-CryptoStar-Dapp-on-Ethereum

## To compile
### Truffle compile
Result


```
Compiling your contracts...
===========================
> Compiling ./contracts/Migrations.sol
> Compiling ./contracts/StarNotary.sol
> Compiling ./node_modules/openzeppelin-solidity/contracts/introspection/ERC165.sol
> Compiling ./node_modules/openzeppelin-solidity/contracts/introspection/IERC165.sol
> Compiling ./node_modules/openzeppelin-solidity/contracts/math/SafeMath.sol
> Compiling ./node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721.sol
> Compiling ./node_modules/openzeppelin-solidity/contracts/token/ERC721/IERC721.sol
> Compiling ./node_modules/openzeppelin-solidity/contracts/token/ERC721/IERC721Receiver.sol
> Compiling ./node_modules/openzeppelin-solidity/contracts/utils/Address.sol
> Artifacts written to /home/pranshu/Desktop/Project5_testing/Decentralized-Star-Notary/smart_contracts/build/contracts
> Compiled successfully using:
   - solc: 0.4.24+commit.e67f0147.Emscripten.clang

```

## To Migrate 
### Truffle migrate --network rinkeby
Here rinkeby defines specific network node

```
Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.


Migrations dry-run (simulation)
===============================
> Network name:    'rinkeby-fork'
> Network id:      4
> Block gas limit: 0x725546


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > block number:        4543111
   > block timestamp:     1560276388
   > account:             0x6038c699e6bc985605d36819E10B722981a2D5cc
   > balance:             18.66894879
   > gas used:            262462
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00262462 ETH

   -------------------------------------
   > Total cost:          0.00262462 ETH


2_deploy_contract.js
====================

   Deploying 'StarNotary'
   ----------------------
   > block number:        4543113
   > block timestamp:     1560276409
   > account:             0x6038c699e6bc985605d36819E10B722981a2D5cc
   > balance:             18.64113149
   > gas used:            2754722
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.02754722 ETH

   -------------------------------------
   > Total cost:          0.02754722 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.03017184 ETH


Starting migrations...
======================
> Network name:    'rinkeby'
> Network id:      4
> Block gas limit: 0x725e31


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0x0f08c7ae1cb7140f5eb78d79a3a54d5a2638d753f2b930314fba5d1b890427c2
   > Blocks: 1            Seconds: 17
   > contract address:    0x8A888C0E6C3Bb78021cfDEF692d3A42b18fb8609
   > block number:        4543114
   > block timestamp:     1560276447
   > account:             0x6038c699e6bc985605d36819E10B722981a2D5cc
   > balance:             18.66879879
   > gas used:            277462
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00277462 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00277462 ETH


2_deploy_contract.js
====================

   Deploying 'StarNotary'
   ----------------------
   > transaction hash:    0x98f621320b097bd902783ebeac8bdaa4a7c139338eb2d0e8143aed69fd9209b7
   > Blocks: 0            Seconds: 5
   > contract address:    0x5b9E785901C4cfaca831D0e34732847AA8B1fd0c
   > block number:        4543116
   > block timestamp:     1560276477
   > account:             0x6038c699e6bc985605d36819E10B722981a2D5cc
   > balance:             18.64053149
   > gas used:            2784722
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.02784722 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.02784722 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.03062184 ETH
```

### To see Contract on Etherscan

https://rinkeby.etherscan.io/address/0x5b9E785901C4cfaca831D0e34732847AA8B1fd0c
