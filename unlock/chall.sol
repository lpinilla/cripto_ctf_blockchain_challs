pragma solidity ^0.7.0;

contract Unlock {
    string public pass = "placeholder";

    function verify(string memory _pass) public view returns (bool){
        require(keccak256(abi.encode(pass)) == keccak256(abi.encode(_pass)));
        return true;
    }

}
