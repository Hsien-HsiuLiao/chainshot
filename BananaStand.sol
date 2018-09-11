pragma solidity ^0.4.19;

contract BananaStand {
  uint8 public bananas;
  function addBananas (uint8 num) public {
      //bananas=0;
      if(bananas <255){
      bananas= num + bananas;
      }
  }
  function removeBananas (uint8 num) public {
      if(bananas>=num){
      bananas = bananas -num;
      }
  }
}
