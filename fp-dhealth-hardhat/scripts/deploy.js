const hre = require("hardhat");

async function main() {
    await hre.run('compile');

    const Users = await hre.ethers.getContractFactory("Users");
    const users = await Users.deploy();
    await users.deployed();

    console.log("Users with 1 ETH deployed to:", users.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
