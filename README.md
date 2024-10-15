<!-- # Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
``` -->

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Elon Musk NFT Smart Contract on OpenSea</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      padding: 20px;
      margin: 0;
    }
    h1, h2, h3 {
      color: #333;
    }
    code {
      background-color: #eee;
      padding: 4px;
      border-radius: 4px;
    }
    pre {
      background-color: #2d2d2d;
      color: #f8f8f2;
      padding: 10px;
      border-radius: 5px;
      overflow-x: auto;
    }
    .container {
      max-width: 900px;
      margin: 0 auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .code-block {
      background-color: #f5f5f5;
      border: 1px solid #ddd;
      padding: 10px;
      margin: 10px 0;
      border-radius: 5px;
    }
  </style>
</head>
<body>

  <div class="container">
    <h1>Elon Musk NFT Smart Contract on OpenSea</h1>
    <p>This project involves the deployment of a custom NFT (Non-Fungible Token) smart contract named <code>ElonNFT</code>, which mints NFTs and is integrated with OpenSea for trading. It is built using the Solidity programming language, Hardhat for testing and deployment, and the Ethers.js library to interact with the Ethereum blockchain.</p>

    <h2>Project Structure</h2>
    <pre>
├── artifacts/
├── cache/
├── contracts/
│   └── Elon.sol          # Solidity contract for the NFT
├── node_modules/
├── scripts/
│   └── run.js            # Script to deploy and mint the NFT
├── test/
│   └── Lock.js           # Test file (optional)
├── .env                  # Environment variables (e.g., private keys, API URLs)
├── .gitignore            # Files to ignore in version control
├── hardhat.config.js     # Hardhat configuration file
├── package.json          # Node.js project dependencies
├── package-lock.json
├── README.md             # Project readme file (you are reading this)
    </pre>

    <h2>Features</h2>
    <ul>
      <li><strong>Solidity Smart Contract:</strong> The <code>Elon.sol</code> contract defines the NFT.</li>
      <li><strong>Deployment Script:</strong> <code>run.js</code> is used to deploy the contract and mint NFTs.</li>
      <li><strong>OpenSea Integration:</strong> Once the NFT is minted, it can be listed and traded on OpenSea.</li>
    </ul>

    <h2>Prerequisites</h2>
    <p>To run this project, ensure you have the following installed:</p>
    <ul>
      <li><strong>Node.js</strong> (v14+)</li>
      <li><strong>NPM</strong> or <strong>Yarn</strong></li>
      <li><strong>Hardhat</strong>: For smart contract development and testing.</li>
    </ul>
    <pre>
npm install --save-dev hardhat
    </pre>

    <h2>Getting Started</h2>

    <h3>1. Clone the Repository</h3>
    <pre>
git clone https://github.com/your-username/ElonMuskNFT.git
cd ElonMuskNFT
    </pre>

    <h3>2. Install Dependencies</h3>
    <pre>
npm install
    </pre>

    <h3>3. Setup Environment Variables</h3>
    <p>Create a <code>.env</code> file at the root of your project to store your private keys and other sensitive information.</p>
    <pre>
API_KEY=&lt;Your_Alchemy_or_Infura_Key&gt;
PRIVATE_KEY=&lt;Your_Wallet_Private_Key&gt;
    </pre>

    <h3>4. Compile the Smart Contract</h3>
    <pre>
npx hardhat compile
    </pre>

    <h3>5. Deploy the Smart Contract</h3>
    <p>Run the <code>run.js</code> script to deploy the NFT contract and mint your NFTs.</p>
    <pre>
npx hardhat run scripts/run.js
    </pre>
    <p>After deployment, the contract address will be printed in the console. You can also mint NFTs by using the same script.</p>

    <pre>
Elon contract address is: 0xYourContractAddressHere
Yay... NFT minted successfully!!!
    </pre>

    <h2>Contract Deployment Example</h2>
    <pre>
async function main() {
  const deployNFTContract = await ethers.deployContract("ElonNFT");
  console.log("Deploying Contract...");

  const elon = await deployNFTContract.waitForDeployment();
  console.log("Elon contract address is:", await elon.getAddress());

  console.log("Minting NFT...");
  let txn = await elon.mintNFT();
  await txn.wait();

  console.log("Yay... NFT minted successfully!!!");
}
    </pre>

    <h2>Testing</h2>
    <p>You can add test cases for your smart contract by modifying the <code>test/Lock.js</code> file or creating new tests as needed. To run the tests, use the following command:</p>
    <pre>
npx hardhat test
    </pre>

    <h2>Deployment to OpenSea</h2>
    <p>After minting, you can list the NFTs on <a href="https://opensea.io" target="_blank">OpenSea</a> by linking the contract address and token ID.</p>

    <h2>Contributing</h2>
    <p>Feel free to fork this project and submit pull requests. Contributions are always welcome!</p>

    <h2>License</h2>
    <p>This project is licensed under the MIT License - see the LICENSE file for details.</p>
  </div>

</body>
</html>
