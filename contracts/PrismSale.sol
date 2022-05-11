// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract PrismSale {

  uint public totalSales;
  uint public maxSales;

  address public owner;
  address public charity;

  constructor() {
    totalSales = 0;
    maxSales = 100;

    owner = 0x2bEfe08D9143C6b39C71cD98a546AFce8c0868e5;
    charity = 0x0Abf11af8DeD7019206BC46E3B4A5569103D0a15;

  }
}
