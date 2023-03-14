First time run NewSetup.sh

Then<br>
`truffle compile`<br>
`truffle develop`<br>
get the port number Truffle Develop started at http://127.0.0.1:9545/<br>
make sure truffle-config evmVersion: "byzantium" is set to  istanbul<br>
inside truffle shell<br>
    `migrate`<br>

//instance 0x1234..."
let instance = await BrainCoin.deployed()
let specificInstance = await BrainCoin.at("0x1234...");
const result = await instance.name()
console.log(result)
//Upgraded 0x91734..."
let instanceV2 = BrainCoinV2.at("0x91734..."
console.log(instanceV2)
