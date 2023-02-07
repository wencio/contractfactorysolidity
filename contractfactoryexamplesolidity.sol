pragma solidity ^0.8.0;

contract Factory {
    address[] public deployedContracts;

    function createContract() public returns (address) {
        address newContract = new Contract();
        deployedContracts.push(newContract);
        return newContract;
    }
}

contract Contract {
    uint public value;

    function setValue(uint x) public {
        value = x;
    }
}
