pragma solidity 0.4.25;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract PointCard {

  event PurchaseMade(address indexed account, uint256 amount);

  address public owner;
  address public pointCardToken;

  constructor(address _pointCardToken) public {
    owner = msg.sender;
    pointCardToken = _pointCardToken;
  }

  function purchase(uint256 value, address tokenAddress) public {
    token = ERC20(tokenAddress);
    token.transferFrom(msg.sender, owner, value);
    pointCardToken = ERC20(pointCardToken);
    pointCardToken.transfer(msg.sender, value);
    emit PurchaseMade(msg.sender, value);
  }
}
