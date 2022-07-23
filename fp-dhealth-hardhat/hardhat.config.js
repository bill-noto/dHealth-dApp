/** @type import('hardhat/config').HardhatUserConfig */

require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config({path:__dirname+'/.env'})
const { API_URL, PRIVATE_KEY } = process.env;

module.exports = {
    solidity: "0.8.9",
    networks: {
        hardhat: {
            chainId: 31337
        },
        goerli:{
            url: API_URL,
            accounts: [`0x${PRIVATE_KEY}`]
        }
    }
};
