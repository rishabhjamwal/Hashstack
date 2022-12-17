# Assigment by Hashstack  

*Multisig wallet contract address : 0x2E2D2d02B03D685Ab3C8EC661f6Bc18a6d98DFB0*

*Access Registry Contract address : 0x8c7c2B974DC21C05468fDcDf9CcbEAbb16c8f27f*

### Copy both the smart contracts and paste it in Remix to play with the functions.
#
`Registry.sol` consists of Access Registry of Owners for the smart contract. To Deploy this smart contract, arguments required are account addresses of Owners in the format :  
**["0x789...","0x456...","0x123..."]**  

The **msg.sender** will have the admin control, who can add and revoke owners.  

#
`Multisigwallet.sol` consists of events for Multi Signature Wallet to run. After deploying this smart contract :  

1) Load the instance of `Registry.sol` by pasting the contract address of `Registry.sol` in **MyContract** function and transact, So that owners can be fetched from that contract and function calls can be made.  

2) Send some ether in the smart contract, I've made use of recieve() function in this.  

3) Transact SumbitTransaction by giving the valid arguments.  

4) Transact ConfirmTransaction through various accounts.

5) Transact ExecuteTransaction, if numConfirmations >= totalConfirmations*60/100 i,e 60% approval it will be executed. 

#
While I was loading the `Registry.sol` instance into `MultisigWallet.sol`, onlyOwner modifier was not working when i was calling from the owner account only. I just couldn't resolve that bug for the events in the `MultisigWallet.sol`.




