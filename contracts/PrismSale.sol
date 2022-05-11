// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract PrismSale {

  uint public totalSales;
  uint public maxSales;

  constructor() {
    totalSales = 0;
    maxSales = 100;

  }
}
