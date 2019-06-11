pragma solidity ^0.4.24;

import '../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721.sol';

contract StarNotary is ERC721 { 

    struct Star { 
        string name; 
        string story;
        string ra;
        string dec;
        string mag;
    }

    mapping(uint256 => Star) public tokenIdToStarInfo; 
    mapping(uint256 => uint256) public starsForSale;
    mapping(bytes32 => bool) public starHashMap;

    function createStar(string _name, string _story, string _ra, string _dec, string _mag, uint256 _tokenId) public { 
        //check if tokenId already exists
        require(keccak256(abi.encodePacked(tokenIdToStarInfo[_tokenId].dec)) == keccak256(""));
        //check input 
        require(keccak256(abi.encodePacked(_ra)) != keccak256(""));
        require(keccak256(abi.encodePacked(_dec)) != keccak256(""));
        require(keccak256(abi.encodePacked(_mag)) != keccak256(""));
        require(_tokenId != 0);
        

        require(!checkIfStarExist(_ra, _dec, _mag));

        Star memory newStar = Star(_name, _story, _ra, _dec, _mag);
        tokenIdToStarInfo[_tokenId] = newStar;

        bytes32 hash = generateStarHash(_ra, _dec, _mag);
        starHashMap[hash] = true;

        _mint(msg.sender, _tokenId);
    }

    function putStarUpForSale(uint256 _tokenId, uint256 _price) public { 
        require(this.ownerOf(_tokenId) == msg.sender);

        starsForSale[_tokenId] = _price;
    }

    function buyStar(uint256 _tokenId) public payable { 
        require(starsForSale[_tokenId] > 0);
        
        uint256 starCost = starsForSale[_tokenId];
        address starOwner = this.ownerOf(_tokenId);
        require(msg.value >= starCost);

        _removeTokenFrom(starOwner, _tokenId);
        _addTokenTo(msg.sender, _tokenId);
        
        starOwner.transfer(starCost);

        if(msg.value > starCost) { 
            msg.sender.transfer(msg.value - starCost);
        }
    }

    function checkIfStarExist(string _ra, string _dec, string _mag) public view returns(bool) {
        return starHashMap[generateStarHash(_ra, _dec, _mag)];
    }

    function tokenIdToStarInfo(uint256 _tokenId) public view returns(string, string, string, string, string){
        return (tokenIdToStarInfo[_tokenId].name, tokenIdToStarInfo[_tokenId].story, tokenIdToStarInfo[_tokenId].ra, tokenIdToStarInfo[_tokenId].dec, tokenIdToStarInfo[_tokenId].mag);
    }

    function generateStarHash(string _ra, string _dec, string _mag) private pure returns(bytes32) {
        return keccak256(abi.encodePacked(_ra, _dec, _mag));
    }

    function mint(uint256 _tokenId) public {
        super._mint(msg.sender, _tokenId);
    }

    function starsForSale(uint256 _tokenId) public view returns(uint256){
        return starsForSale[_tokenId];
    }
}