// test/Box.test.js
// Load dependencies
const { expect } = require('chai');
const { ethers } = require('hardhat');

// start test block
describe('Box', function () {
    before(async function () {
        this.Box = await ethers.getContractFactory('Box');
    });

    beforeEach(async function () {
        this.box = await this.Box.deploy();
        await this.box.deployed();
    });

    // test case
    it('retrieve returns a value previously stored', async function () {
        // store a value
        await this.box.store(42);

        expect((await this.box.retrieve()).toString()).to.equal('42');
    });
});