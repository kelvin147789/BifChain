pragma solidity >=0.4.22;


contract BifChain {

    mapping(address=> uint256) uniqueId;
    mapping(address => Item[]) List; 
    mapping(address=> bool) registered;
    uint256 amountOfUser = 0;
    address public owner;

    constructor() public {
        owner = msg.sender;
        uniqueId[owner] = 0;
    }

    struct Item {
        uint256 _bifB;
        address _address;
        string _description;
        string _bifData;
        uint256 _currentTimeStamp;
    }

    function returnAmountOfUser() public view returns (uint256) {
        return amountOfUser;
    } 

    function record(uint256 _x,address _y,string memory _t ,string memory _z) public {
        List[msg.sender].push(Item(_x,_y,_t,_z,block.timestamp));
    }

    function getRecord(uint256 index) public view returns(uint256 ,address,string memory,string memory,uint256) {
        // return Struct Item
    return (List[msg.sender][index]._bifB,List[msg.sender][index]._address,List[msg.sender][index]._description,List[msg.sender][index]._bifData,List[msg.sender][index]._currentTimeStamp); 
    }

     function getRecordBifNoX(uint256 index) public view returns (uint256 _x){
        _x = List[msg.sender][index]._bifB;
        return _x;
    }

    function getRecordAddressY(uint256 index) public view returns (address _y){
        _y = List[msg.sender][index]._address;
        return _y;
    }

    function getRecordDescriptionZ(uint256 index) public view returns (string memory _z){
        _z = List[msg.sender][index]._description;
        return _z;
    }

    function getRecordTimeStampT(uint256 index) public view returns (uint256 _t){
        _t = List[msg.sender][index]._currentTimeStamp;
        return _t;
    }


    function getRecordDataD(uint256 index) public view returns (string memory _d){
        _d = List[msg.sender][index]._bifData;
        return _d;
    }



    

    

    
       




}