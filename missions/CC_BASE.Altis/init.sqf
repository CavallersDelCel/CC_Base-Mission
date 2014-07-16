/****************************************************************

Cavallers del Cel Mission Framework

Script: Mission init
Author: OMSmolina, TBlack
Script version: 1.0

Game type: n/a
File: init.sqf

****************************************************************/


//define private variables
private[ "_blackScreen", "_missionInit"];

//This sleep prevents scripts start on map
Sleep 0.1;

//Disable keyboard
disableUserInput true;

//Starts the effect of black screen
_blackScreen = execVM"fnc\effects\blackScreen.sqf";

//Load and runs scripts objects and expected to be charged (waitUntil)
_missionInit = [] execVM "fnc\missionInit.sqf";
waitUntil {scriptDone _missionInit};

[] execVM "briefing.sqf";

/*
 *
 *
 *space for other init code; external scripts...
 *
 *
 */

call compile preprocessFileLineNumbers "libs\UPSMON\Init_UPSMON.sqf";


//Ends the effect of black screen
terminate _blackScreen;

//Wait 5 seconds
Sleep 5;

//Remove the black screen slowly
cutText ["","BLACK IN",10];

//Write for display in the upper right corner
hint "PARTIDA INICIADA SATISFACTORIAMENT";

//Wait 3 seconds
Sleep 3;

//Clean the upper right corner
hint "";

//Enable keyboard
disableUserInput false;
