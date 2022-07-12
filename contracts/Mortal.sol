pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Mortal is Ownable {
    address owner = owner();

    function kill() public onlyOwner {
        selfdestruct(owner);
    }
}
