import type { HardhatUserConfig } from "hardhat/config";
// import "@nomicfoundation/hardhat-toolbox-viem";
import "@nomicfoundation/hardhat-toolbox";

import "dotenv/config";

const config: HardhatUserConfig = {
  solidity: "0.8.28",
  networks: {
    testnet: {
      url: process.env.API_URL as string,
      accounts: [process.env.PRIVATE_KEY as string],
      chainId: 1114,
    },
  },
};

export default config;
