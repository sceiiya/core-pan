const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();
  const ContractFactory = await ethers.getContractFactory("SceiiCalculator");

  const contract = await ContractFactory.deploy();

  console.log(`contract deployed hash ${contract.target}`);
  console.log(`deployer add ${deployer.address}`);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
