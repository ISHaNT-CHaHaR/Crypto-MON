pragma solidity >=0.5.0;


contract Adoption {
    address[16] public adopters; // array of ethereum accounts.

    function adopt(uint256 petId) public returns (uint256) {
        // Adopting a pokemon
        require(
            petId >= 0 && petId <= 15,
            "Check if require belong to a particular ID"
        );

        adopters[petId] = msg.sender;
        return petId;
    }

    //Reyrieving a Adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
