// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IERC20.sol";
import "./ERC20.sol";
import "./ERC20Burnable.sol";
import "./Context.sol";
import "./Ownable.sol";
import "./SafeMath.sol";

contract AIGToken is Context, ERC20Burnable, Ownable {
    using SafeMath for uint256;

    constructor() ERC20("AIG Token", "AIG") {
        uint256 totalSupply = 100000000000 * 10**18;
        _mint(_msgSender(), totalSupply);
    }

    function approve(address spender, uint256 amount) public override returns (bool) {
        return super.approve(spender, amount);
    }

    function burn(uint256 amount) public override onlyOwner {
        super.burn(amount);
    }
}
