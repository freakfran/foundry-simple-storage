// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    //public private internal external
    //public 外部和内部都可以访问
    //private 只能本合约内部访问
    //internal 只能本合约内部和继承合约内部访问
    //external 只能外部访问
    uint256 internal myFavouriteNumber;

    //struct
    struct Person {
        uint256 favouriteNumber;
        string name;
    }
    //array

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public virtual {
        myFavouriteNumber = _favouriteNumber;
    }

    //view 只会读取合约内变量，不会修改
    //pure 不会读写合约内变量
    function retrieve() public view returns (uint256) {
        return myFavouriteNumber;
    }

    //calldata 只读，不能修改
    //memory 读写，可以修改
    //storage 永久存在，读写，可以修改
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
