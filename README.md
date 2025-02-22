# PET-ME! 🐾

A fun and interactive app that helps you discover and track dog breeds while earning rewards!

## Features 🌟

### 🐕 Breed Identification
- Take pictures of dogs you encounter
- Advanced breed recognition powered by MobileNet-v2 model
- Instant and accurate breed classification

### 📍 Interactive Map
- View all your discovered dogs on an interactive map
- Track your dog-spotting journey
- Build your personal canine discovery database

### 💰 PawCoin Rewards
- Earn PawCoin tokens for finding rare dog breeds
- Smart contracts deployed on Sepolia testnet
- Blockchain-based reward system using Solidity

## Technical Stack 🛠

### Frontend
- React Native with Expo
- Interactive mapping integration
- Camera functionality
- Web3 integration for blockchain features

### Backend
- Django REST Framework
- TensorFlow for breed classification
- MobileNet-v2 model implementation
- API endpoints for image processing and data management

### Blockchain
- Solidity smart contracts
- Hardhat development environment
- PawCoin token contract on Sepolia testnet
- Web3 integration for token rewards

## Getting Started 🚀

1. Clone the repository

2. Set up the environment

   ### Frontend
   ```bash
   cd client/pet-me-client
   npm install
   ```

   ### Backend
   ```bash
   cd server
   python -m venv dogs-env
   source dogs-env/bin/activate  # On Windows: dogs-env\Scripts\activate
   pip install -r requirements.txt
   ```

   ### Smart Contract
   ```bash
   cd smart-contract/pawcoin
   npm install
   ```

3. Configure environment variables
   - Create `.env` files in each directory following the example templates
   - Set up your Sepolia testnet API keys and endpoints

4. Start the development servers

   ### Frontend
   ```bash
   cd client/pet-me-client
   npx expo start
   ```

   ### Backend
   ```bash
   cd server
   python manage.py runserver
   ```

   ### Deploy Smart Contract (Optional)
   ```bash
   cd smart-contract/pawcoin
   npx hardhat run scripts/deploy.js --network sepolia
   ```
