const hre = require("hardhat");

async function main() {
    const PawCoin = await hre.ethers.getContractFactory("PawCoin");
    const cap = hre.ethers.parseEther("1000000"); // 1 Million Tokens

    console.log("Deploying PawCoin contract...");
    const pawCoin = await PawCoin.deploy(cap);

    // Wait for deployment
    await pawCoin.waitForDeployment();

    console.log("PawCoin deployed to:", await pawCoin.getAddress());
}

main().catch((error) => {
    console.error(error);
    process.exit(1);
});
