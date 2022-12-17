pragma solidity ^0.8.13;

contract Registry{
    address[] public owners;
    mapping(address => bool) public isOwner;

    modifier onlyAdmin() {
        require(isOwner[msg.sender], "not owner");
        _;
    }

    constructor(address[] memory _owners) {
        require(_owners.length > 0, "owners required");
        

        for (uint i = 0; i < _owners.length; i++) {
            address owner = _owners[i];

            require(owner != address(0), "invalid owner");
            require(!isOwner[owner], "owner not unique");

            isOwner[owner] = true;
            owners.push(owner);
        }

        
    }

    function getOwners() external view returns (address[] memory) {
        return owners;
    }
    function addOwners(address _owners) onlyAdmin public returns (address[] memory){
        
        
            owners.push(_owners);
            return owners;
        }

    function revokeOwners(uint _index) onlyAdmin public{
        require(_index < owners.length, "index out of bound");

        for(uint i = _index; i < owners.length-1; i++){
            owners[i] == owners[i+1];
        }
        owners.pop();
        
        
            
        }    


        

    
    

}