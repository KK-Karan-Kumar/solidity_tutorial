// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


// struct
// Structs in Solidity allows you to create more complicated data types that have multiple properties. You can define your own type by creating a struct.

// They are useful for grouping together related data.

// Structs can be declared outside of a contract and imported in another contract. Generally, it is used to represent a record. To define a structure struct keyword is used, which creates a new data type. 

contract structs{
    //defining the struct
    struct Task{
        uint id;
        string taskname;
        bool isCompleted;
    }


    Task public task1 = Task(1,"reading book",false);

    Task public task2;

    function getTask()public{
     task2 = Task(2,"coding",true);   
    }

    function gettask1name()public view returns(string memory){
        return task1.taskname;
    }

    //struct in array

    Task[] public tasklist;
    //set the new task
    function setTask(string memory _tn)public {
        Task memory newtask = Task({id:tasklist.length,taskname:_tn,isCompleted:false});
        tasklist.push(newtask);
    }

    //return the lenth of task
    function tasklen()public view returns(uint){
        return tasklist.length;
    }

    //return the length of task
    function gett(uint _id)public view returns(Task memory){
        return tasklist[_id];
    }
    

}