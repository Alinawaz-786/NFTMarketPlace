

/**
 *Submitted for verification at Etherscan.io on 2021-01-11
*/

/**
 *Submitted for verification at Etherscan.io on 2018-06-12
*/

pragma solidity ^0.4.13;

import "./ProxyRegistry.sol";
import "./ERC20Basic.sol";


contract TokenTransferProxy {

    /* Authentication registry. */
    ProxyRegistry public registry;

    /**
     * Call ERC20 `transferFrom`
     *
     * @dev Authenticated contract only
     * @param token ERC20 token address
     * @param from From address
     * @param to To address
     * @param amount Transfer amount
     */
    function transferFrom(address token, address from, address to, uint amount)
        public
        returns (bool)
    {
        require(registry.contracts(msg.sender));
        return ERC20(token).transferFrom(from, to, amount);
    }

}