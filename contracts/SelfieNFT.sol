// SPDX-License-Identifier: Unlicensed

pragma solidity 0.8.0;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract SelfieNFT is ERC721URIStorage {


   using Counters for Counters.Counter;
   Counters.Counter private _tokenIds;

   constructor() ERC721 ("SelfieNFT", "SELFIE"){
     console.log("This is my SelfieNFT");
   }

   function mintSelfieNFT() public {
     uint256 newItemId = _tokenIds.current();

     _safeMint(msg.sender, newItemId);

     _setTokenURI(newItemId, "ipfs://QmbXfhQXK22ctPgZPNQVykJhexD7Pty9eRcdeMiirtZrWr");

     _tokenIds.increment();
   }
}
