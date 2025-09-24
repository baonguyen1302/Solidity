// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

contract FristCoin {
    address public miner ;
    mapping (address => uint) public balance ;

    constructor () {
        miner = msg.sender ;
    }    

    event sent(address from , address to , uint amount) ;

    function mint (address receiver , uint amount) public {
        require(msg.sender == miner);
        require(amount < 1e60);
        balance[receiver] += amount;
    }

    function send(address receiver , uint amount) public   {
        require(amount <= balance[msg.sender] , "Khong du so du");
        balance[msg.sender] -= amount ;
        balance[receiver] += amount ;
        emit sent(msg.sender , receiver , amount);
    }
}