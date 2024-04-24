const hre = require('hardhat')
const { ethers, upgrades } = hre;

async function main() {
  const ResilientOracle = await ethers.getContractFactory("ResilientOracle");
  const resilientOracle = await ResilientOracle.attach('0x2D9f861Fb030Fa2Bf9Ac64EBD11dF7f337bA7582')
  const tx = await resilientOracle.setTokenConfig([
    '0xae13d989dac2f0debff460ac112a837c89baa7cd', // asset token
    [
      '0x1A26d803C2e796601794f8C5609549643832702C',
      '0x806B5D50b4bf790853a3595BEC0767d1a002aD82',
      '0x2514895c72f50D8bd4B4F9b1110F0D6bD2c97526'
    ],
    [true, true, true],
    300
  ]);
  await tx.wait();
  console.log('done')
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });