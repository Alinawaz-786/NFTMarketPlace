/**
 *Submitted for verification at Etherscan.io on 2021-01-11
*/

/**
 *Submitted for verification at Etherscan.io on 2018-06-12
*/

pragma solidity ^0.4.13;

contract ReentrancyGuarded {

    bool reentrancyLock = false;

    /* Prevent a contract function from being reentrant-called. */
    modifier reentrancyGuard {
        if (reentrancyLock) {
            revert();
        }
        reentrancyLock = true;
        _;
        reentrancyLock = false;
    }

}