// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract PrismSale {

  uint public totalSales;
  uint public maxSales;

  address public owner;
  address public charity;

  mapping (address => bool) sales;

  constructor() {
    totalSales = 0;
    maxSales = 100;

    owner = 0x2bEfe08D9143C6b39C71cD98a546AFce8c0868e5;
    charity = 0x0Abf11af8DeD7019206BC46E3B4A5569103D0a15;

  }

  function canBuy () public returns (bool) {
    return totalSales < maxSales;
  }

  function hasAccess () public returns (bool) {
    return sales[msg.sender];
  }

  function buy () public payable returns (bool) {
    require(canBuy() == true, "can't buy this");
    require(msg.value ==  0.01 ether, "you did not send the correct ammout");
    require(hasAccess() == false, "already bought");

    payable(owner).transfer(msg.value * 80 / 100);
    payable(charity).transfer(msg.value * 20 / 100);

    totalSales = totalSales +1;

    sales[msg.sender] = true;
  
    return true;
  }
}
