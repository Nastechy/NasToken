// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract JoyToken {
    string public tokenName = "Joy Token";
    string public tokenSymbol = "Joy";
    uint256 public totalSupply;
    mapping(address => uint256) public balances;


    function mintToken(address _reciever, uint256 _value) external {
         require(_value > 0, "Value is less than 0");
        totalSupply += _value;  
         balances[_reciever] += _value;
    }

    function  burnToken(address _from,  uint256 _value) external {
        require(_value > 0, "Value is less than 0");
        require( balances[_from] >= _value, "low fund");
        totalSupply -= _value;
         balances[_from] -= _value;
    }
}
