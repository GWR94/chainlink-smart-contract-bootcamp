pragma solidity ^0.6.7;

contract MyFirstContract {
    uint256 number = 0;
    string[] names;
    mapping (string => uint) public phoneNumbers;

    // modify numbers    
    function changeNum (uint256 _num) public {
        number = _num;
    }
    
    function setMobileNumber(string memory _name, uint mobileNumber) public {
        phoneNumbers[_name] = mobileNumber;
    }
    
    function getMobileNumber(string memory _name) public view returns (uint) {
        return phoneNumbers[_name];
    }
    
    /*
        view because it doesnt change any state
        returns (uint256) as its returning an unsigned int
    */
    function getNum () public view returns (uint256) {
        return number;
    }
    
    function addToNum() public {
        number = number + 1;
    }
    
    function addName (string memory _name) public {
        names.push(_name);
    }
    
    function getName (uint256 _index) public view returns (string memory) {
        return names[_index];
    }
}