/*
 * NB: since truffle-hdwallet-provider 0.0.5 you must wrap HDWallet providers in a 
 * function when declaring them. Failure to do so will cause commands to hang. ex:
 * ```
 * mainnet: {
 *     provider: function() { 
 *       return new HDWalletProvider(mnemonic, 'https://mainnet.infura.io/<infura-key>') 
 *     },
 *     network_id: '1',
 *     gas: 4500000,
 *     gasPrice: 10000000000,
 *   },
 */
var HDWalletProvider = require("truffle-hdwallet-provider")
var mnemonic = "employ direct tenant initial naive have victory canoe forest attend symptom artwork"
module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*"
    },
    rinkeby: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/v3/ea8cfec2d8064cefbc1324e977a6e992")
      },
      network_id: 4,
      gas: 4500000,
      gasPrice: 10000000000
    }
  },compilers: {
     solc: {
       version:"0.4.24"   // ex:  "0.4.20". (Default: Truffle's installed solc)
     }
  }
};
