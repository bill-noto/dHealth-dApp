pragma solidity ^0.8.0;

import "./Mortal.sol";

contract Users is Mortal {

    // data structure for users, with all their information
    struct User {
        uint8 id;
        string name;
        string illnesses;
        string illnesses_description;
        bool is_doctor;
        address creator;
        uint age;
        uint createdAt;
        uint updatedAt;
    }

    mapping(uint256 => User) public users;

    uint8 public numUser;

    constructor() public {
        numUser = 0;
        addUser(
            "Government",
            "None",
            "No Description",
            1,
            0
        );
    }

    /**
    * Function to add a new user to the system.
    * @param name           The name of the new user
    * @param illnesses      Any illnesses that the user might have
    * @param illnesses_description       The description of the illnesses
    * @param is_doctor       Establish if the new user is a doctor or not
    * @param age       Age of patient
    */
    function addUser(
        string memory name,
        string memory illnesses,
        string memory illnesses_description,
        bool is_doctor,
        uint age
    ) public {
        User storage user = users[numUser];
        user.creator = msg.sender;
        createdAt = block.timestamp;
        updatedAt = block.timestamp;

        users[numUser] = User(
            numUser,
            name,
            illnesses,
            illnesses_description,
            is_doctor,
            user.creator,
            age,
            createdAt,
            updatedAt
        );
        numUser++;
    }

}
