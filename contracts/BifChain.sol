pragma solidity >=0.4.22 <0.9.0;


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

    // function register() public returns(bool)
    // {
    //     require(!registered[msg.sender],"Registered.");
    //     amountOfUser = amountOfUser+=1;
    //     uniqueId[msg.sender] = amountOfUser;
    //     registered[msg.sender] = true;
    //     return registered[msg.sender];
    // }

    // function getUniqueId() public view returns(uint256) {
    //     return uniqueId[msg.sender];
    // }

    function record(uint256 _x,address _y,string memory _t ,string memory _z) public {

        
        List[msg.sender].push(Item(_x,_y,_t,_z,block.timestamp));
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