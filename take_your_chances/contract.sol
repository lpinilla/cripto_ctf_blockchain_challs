pragma solidity ^0.7.0;

contract chances {

    bytes32 private seed;
    mapping(address => uint) public consecWins;

    constructor () public{
        seed = keccak256("aguante las clases de cripto");
    }

    function bet(uint guess) public{
        uint aux = uint(keccak256(abi.encodePacked(seed, block.number))) ^ 0x274;
        if (guess == aux) {
            consecWins[msg.sender] = consecWins[msg.sender] + 1;
        }else {
            consecWins[msg.sender] = 0;
        }
    }

    function done() public view returns (uint16[] memory) {
        if (consecWins[msg.sender] > 1) {
            return [];
        }
    }

}
