const PrismSale = artifacts.require("PrismSale");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract('PrismSale', function (accounts) {
  it('should assert true', async function () {
    await PrismSale.deployed();
    return assert.isTrue(true);
  });

  it('should get the right account', async function () {
    const contract = await PrismSale.deployed();

    const owner = await contract.owner.call();
    const charity = await contract.charity.call();

    assert.isTrue(owner == 0x2befe08d9143c6b39c71cd98a546afce8c0868e5);
    assert.isTrue(charity == 0x0abf11af8ded7019206bc46e3b4a5569103d0a15);
  });
});
