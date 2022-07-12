pragma solidity ^0.8.0;

import "./Mortal.sol";

contract Users is Mortal {
    // data structure for users, with all their information
    struct User {
        string name;
        string illness;
        string illness_description;
        bool is_doctor;
        address creator;
        uint healthcare_number;
        uint age;
        uint createdAt;
        uint updatedAt;
    }

    mapping(uint256 => User) public users;
    uint8 public numUser;
    
    // Modifier: check if the caller of the smart contract is registered
    modifier checkSenderIsRegistered {
        require(isRegistered());
        _;
    }


    /**
     * Check if the user that is calling the smart contract is registered.
     */
    function isRegistered() public view returns (bool)
    {
        return (users[msg.sender] > 0);
    }
}
