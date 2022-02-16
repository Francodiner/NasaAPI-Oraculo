// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Oracle{

    //Direccion del owner
    address owner;

    //Numero de asteroides
    uint public numberAsteroids;

    //Evento que reciba datos del oraculo
    event __calbackNewData();

    //Constructor
    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner");
        _;
    }

    function update() public onlyOwner{
        emit __calbackNewData();
    }

    //Funcion para configuracion manual del numero de asteroides
    function setNumberAsteroids(uint _num) public onlyOwner {
        numberAsteroids = _num;
    }

}