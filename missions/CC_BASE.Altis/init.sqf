/****************************************************************

Cavallers del Cel Mission Framework

Script: Mission init
Author: OMSmolina, TBlack
Script version: 1.0

Game type: n/a
File: init.sqf

****************************************************************/


//This sleep prevents scripts start on map
Sleep 0.1;

//Load and run the secondary initialization file (asynchronous)
[] execVM "fnc\missionInit.sqf";