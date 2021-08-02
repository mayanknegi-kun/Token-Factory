pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20{
    
    // uint8 decimal;
    constructor(string memory _name,string memory _symbol,uint _totalSupply,address _issuer) ERC20(_name,_symbol){
        _mint(_issuer,_totalSupply);
    }
    
}