pragma solidity ^0.8.0;
// "Nomisma" is the greek term for currency. This is serving as a placeholder for now
// as we haven't decided on a name

// https://www.toptal.com/ethereum/create-erc20-token-tutorial : => This is the guide being used

contract Nomisma {
  // Some variables
  string public name;
  string public symbol;
  uint8 public decimals;
  uint256 public _totalSupply = 9001;

  // Mapping objects
  mapping(address => uint256) balances;
  mapping(address => mapping(address => uint256)) allowed;

  // skeleton functions that must be filled in

  function totalSupply() public view returns (uint256){
    return _totalSupply;
  }

  function balanceOf(address tokenOwner) public view returns(uint){
    // I want to get the balance of the address from the balances mapping.
    return balances[tokenOwner];
  }

  function allowance(address tokenOwner, address spender) public view returns(uint){
  }

  function transfer(address _to, uint _tokens) public returns (bool){
      // transfer amount of _tokens from owner's balances
      // check that owner's balance >= amount of _tokens to transfer AND _tokens amount > 0
        if (balances[msg.sender] >= _tokens && _tokens > 0) {
            // subtract _token amount from owner balance
            balances[msg.sender] -= _tokens;
            // add _token amount _to address
            balances[_to] += _tokens;
            // send balance
            emit Transfer(msg.sender, _to, _tokens);
            return true;
        } 
        return false;
    }      
      

  function approve(address spender, uint _tokens) public returns (bool){
  }

  function transferFrom(address _from, address _to, uint _tokens) public returns (bool){
  }

  // Skeleton events neccessary for the contract
  // These events are emitted when a user is granted rights to withdraw and transfer
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

  event Transfer(address indexed from, address indexed to, uint _tokens);
  
}
