// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "hardhat/console.sol";

contract ElonNFT is ERC721URIStorage {

    // Counters.Counter priivate _tokensIds -- replaced with below
    uint private _tokenIds;

    constructor() ERC721("ElonMusk", "ELON") {}

    function mintNFT() public returns (uint256) {
        // _tokenIds.increment() -- replaced with below
        _tokenIds++;

        // uint256 newItemId = _tokenIds.current(); -- replace with below
        uint newItemId = _tokenIds;
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, "https://purple-impressed-cow-82.mypinata.cloud/ipfs/QmQNEnuR7tt3rUgHikZHK3qRcDkTTZfdZUzpbKFJgo7swS");
        console.log(
            "The NFT ID %s has been minted to %s",
            newItemId,
            msg.sender
        );
        return newItemId;
    }
}