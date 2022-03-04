//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

// Standart ERC20 Token

contract GovernanceToken is ERC20Votes {
    uint256 public s_maxSupply = 1000000 * 10**18;

    constructor() ERC20("Crome Token", "CT") ERC20Permit("Crome Token") {
        _mint(msg.sender, s_maxSupply);
    }

    // Overrided functions

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount) internal override(ERC20Votes) {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount)
        internal
        override(ERC20Votes)
    {
        super._burn(account, amount);
    }
}
