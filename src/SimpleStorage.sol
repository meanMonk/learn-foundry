// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.13;

contract SimpleStorage {
  
  uint public favNumber;
  
  mapping (address person => uint favoriteNumber) personToNumbers;
  
  function setPerson(address _person, uint _favNum) public  {
    favNumber = _favNum;
    personToNumbers[_person] = _favNum;
  }
  
  function getPersonFavNumber(address _person) public view returns(uint){
    return personToNumbers[_person];
  }
  
}