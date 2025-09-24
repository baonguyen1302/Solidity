pragma solidity >= 0.7.0  <0.9.0;

contract FristContact{
    uint private saveData ;

    function setData(uint x) public {
        saveData = x ;
    }
    function getData() public view returns (uint x) {
        return saveData ;
    }
}