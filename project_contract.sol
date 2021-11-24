// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract Storage {

 struct personal_data{
    bool Land;
    bool house;
    bool sanitation;
    bool illerate;
    bool employed;
    bool safe_water;
    bool deprived_caste; 
 }
    personal_data p;
    uint check=0;
    
    function land_less(bool ans) public {
        p.Land = ans;
        if(ans){
            check++;
        }
    }
    function dilapidated_house(bool ans) public {
        p.house = ans;
        if(ans){
            check++;
        }
    }
    function sanitation(bool ans) public {
        p.sanitation = ans;
        if(ans){
            check++;
        }
    }
    function illerate(bool ans) public {
        p.illerate = ans;
        if(ans){
            check++;
        }
    }
    function employed(bool ans) public {
        p.employed = ans;
        if(ans){
            check++;
        }
    }
    function check_status() public view returns (string memory){
        string memory message;
        if(check>=4){
            message="applicable to certain policy";
        }else{
            message="Not applicable to certain policy";
        }
        return message;
    }
}
