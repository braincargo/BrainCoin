const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');

const BrainCoin = artifacts.require('BrainCoin');
// const BrainCoinV2 = artifacts.require('BrainCoinV3');

module.exports = async function (deployer) {
  const instance = await deployProxy(BrainCoin, { deployer });
  // console.log("instance", instance.address);
  // const upgraded = await upgradeProxy(instance.address, BrainCoinV2, { deployer });
  // console.log("Upgraded", upgraded.address);
}