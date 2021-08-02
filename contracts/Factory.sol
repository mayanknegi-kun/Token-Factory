pragma solidity ^0.8.0;

import "./Token.sol";

contract Factory{
    
    event TokenGenerated(address indexed issuer,address indexed contractAddress,string name,string symbol,uint totalSupply);
    
    function deployNewToken(string memory _name,string memory _symbol,uint _totalSupply,address _issuer) public returns(address){
        Token t = new Token(_name,_symbol,_totalSupply,_issuer);
        emit TokenGenerated(_issuer,address(t),_name,_symbol,_totalSupply);
        return address(t);
    }
}