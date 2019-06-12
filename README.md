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

truffle migrate --network rinkeby
```
Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.


Migrations dry-run (simulation)
===============================
> Network name:    'rinkeby-fork'
> Network id:      4
> Block gas limit: 0x6acfc0


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > block number:        4545433
   > block timestamp:     1560311227
   > account:             0x6038c699e6bc985605d36819E10B722981a2D5cc
   > balance:             18.60636779
   > gas used:            258162
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00258162 ETH

   -------------------------------------
   > Total cost:          0.00258162 ETH


2_deploy_contracts.js
=====================

   Deploying 'StarNotary'
   ----------------------
   > block number:        4545435
   > block timestamp:     1560311245
   > account:             0x6038c699e6bc985605d36819E10B722981a2D5cc
   > balance:             18.58436564
   > gas used:            2173187
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.02173187 ETH

   -------------------------------------
   > Total cost:          0.02173187 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.02431349 ETH


Starting migrations...
======================
> Network name:    'rinkeby'
> Network id:      4
> Block gas limit: 0x6aea72


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0x96b8760fd881d211fc52d6140fcf20b56205579c8b89c867f1428fdf6bd54196
   > Blocks: 1            Seconds: 14
   > contract address:    0x6cC20108a224A76DC2DEDb9c188CAf6F72105026
   > block number:        4545436
   > block timestamp:     1560311280
   > account:             0x6038c699e6bc985605d36819E10B722981a2D5cc
   > balance:             18.60621779
   > gas used:            273162
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00273162 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00273162 ETH


2_deploy_contracts.js
=====================

   Deploying 'StarNotary'
   ----------------------
   > transaction hash:    0xefc475f7a26f8ff530db34f997246af85355838fa5e15fa9a321433703b6d635
   > Blocks: 1            Seconds: 9
   > contract address:    0x40A4C4F14965071dB3709be13808A1dF6a90737e
   > block number:        4545438
   > block timestamp:     1560311310
   > account:             0x6038c699e6bc985605d36819E10B722981a2D5cc
   > balance:             18.58376564
   > gas used:            2203187
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.02203187 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.02203187 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.02476349 ETH
```

### To see Contract on Etherscan

https://rinkeby.etherscan.io/address/0x5b9E785901C4cfaca831D0e34732847AA8B1fd0c
