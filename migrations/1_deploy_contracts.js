const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');

const Box = artifacts.require('BrainCoin');
const BoxV2 = artifacts.require('BrainCoinV2');

module.exports = async function (deployer) {
  const instance = await deployProxy(Box, [42], { deployer });
  console.log("instance", instance.address);
  const upgraded = await upgradeProxy(instance.address, BoxV2, { deployer });
  console.log("Upgraded", upgraded.address);
}