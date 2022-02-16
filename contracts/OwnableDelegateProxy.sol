
/**
 *Submitted for verification at Etherscan.io on 2021-01-11
*/

/**
 *Submitted for verification at Etherscan.io on 2018-06-12
*/

pragma solidity ^0.4.13;

import "./OwnedUpgradeabilityProxy.sol";

contract OwnableDelegateProxy is OwnedUpgradeabilityProxy {

    constructor(address owner, address initialImplementation, bytes calldata)
        public
    {
        setUpgradeabilityOwner(owner);
        _upgradeTo(initialImplementation);
        require(initialImplementation.delegatecall(calldata));
    }

}