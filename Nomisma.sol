pragma solidity ^0.8.0:
// "Nomisma" is the greek term for currency. This is serving as a placeholder for now
// as we haven't decided on a name

// https://www.toptal.com/ethereum/create-erc20-token-tutorial : => This is the guide being used

contract Nomisma {
  // Some variables
  string public constant name;
  string public constant symbol;
  uint8 public constant decimals;
  uint256 public totalSupply = 9001;

  // Mapping objects
  mapping(address => uint256) balances;
  mapping(address => mapping(address => uint256)) allowed;

  // skeleton functions that must be filled in

  function totalSupply() public view returns (uint256){
    return totalSupply;
  }

  function balanceOf(address tokenOwner) public view returns(uint){
    // I want to get the balance of the address from the balances mapping.
    return balances[tokenOwner];
  }

  function allowance(address tokenOwner, address spender) public view returns(uint){
   //returns the amount the spender is allowed to spend on behalf of the tokenOwner
    return allowed[tokenOwner][spender];
  }

  function transfer(address _to, uint _tokens) public returns (bool){
  }

  /*  Allows an owner to approve another account (delegate) to withdraw tokens from
  his and transfer them to another/others */
  function approve(address delegate, uint _numtokens) public returns (bool){
    // allowed number of tokens being withdrawn by delegate
    allowed[msg.sender][delegate] = _numtokens;

    // Emits approval as soon as successful
    emit Approval(msg.sender, delegate, _numtokens)

    // Then returns true
    return true;
  }

  function transferFrom(address _from, address _to, uint _tokens) public returns (bool){
      // `_from` and `_to` cannot be the zero address
      _transfer(_from, _to, _tokens);

      // `_from` must have a balance of at least `_tokens`
      uint256 currentAllowance = allowed[_from][_msgSender()];

      // the caller must have allowance for ``_from``'s tokens of at least `_tokens`
      require(currentAllowance >= _tokens, "ERC20: transfer amount exceeds allowance");

      // deduct `_tokens` from `currentAllowance`
      _approve(_from, _msgSender(), currentAllowance - _tokens);

      return true;
  }

  // Skeleton events neccessary for the contract
  // These events are emitted when a user is granted rights to withdraw and transfer
  event Approval (address indexed tokenOwner, address indexed spender, uint tokens){
  }

  event Transfer_Event(address indexed from, address indexed to, uint _tokens){
  }
}
