pragma solidity ^0.8.0:
// "Nomisma" is the greek term for currency. This is serving as a placeholder for now
// as we haven't decided on a name

// https://www.toptal.com/ethereum/create-erc20-token-tutorial : => This is the guide being used

contract Nomisma {
  // Some variables
  string public constant name;
  string public constant symbol;
  uint8 public constant decimals;


  // Mapping objects
  mapping(address => uint256) balances;
  mapping(address => mapping(address => uint256)) allowed;

  // skeleton functions that must be filled in

  function totalSupply() public view returns (uint256){
  }

  function balanceOf(address tokenOwner) public view returns(uint){
    // I want to get the balance of the address from the balances mapping.
    return balances[tokenOwner];
  }

  function allowance(address tokenOwner, address spender) public view returns(uint){
  }

  function transfer(address _to, uint _tokens) public returns (bool){
  }

  function approve(address spender, uint _tokens) public returns (bool){
  }

  function transferFrom(address _from, address _to, uint _tokens) public returns (bool){
  }

  // Skeleton events neccessary for the contract
  // These events are emitted when a user is granted rights to withdraw and transfer
  event Approval (address indexed tokenOwner, address indexed spender, uint tokens){
  }

  event Transfer_Event(address indexed from, address indexed to, uint _tokens){
  }
}
