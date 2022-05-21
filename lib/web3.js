import Web3 from 'web3';
import PrismSale from './PrismSale.json';

const web3 = new Web3(Web3.givenProvider || "ws://127.0.0.1:7545");

const contractAddress = '0x1e7A7881a4D535717d9CA7aA8e475dF0CbeFef9C';
const contract = new web3.eth.Contracts(PrismSale.abi, contractAddress);

const sharedMessage = "This is to confirm your account when downloading the limited edition album"

export { web3, contract, contractAddress, sharedMessage }