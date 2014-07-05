/****************************************************************

Cavallers del Cel Mission Framework

Script: Mission init
Author: OMSmolina, TBlack
Script version: 1.0

Game type: n/a
File: missionInit.sqf

****************************************************************/

//Define private variables
private ["_3DInit","_blackScreen"];

//From here it runs only on server
if (!isServer) exitWith {};

[-1,
	{
		//Disable keyboard
		disableUserInput true;

		//Starts the effect of black screen
		_blackScreen = execVM"fnc\effects\blackScreen.sqf";

		//Load and runs scripts objects and expected to be charged (waitUntil)
		_3DInit = execVM "fnc\objects\objectsInit.sqf";
		waitUntil {scriptDone _3DInit};

		//Ends the effect of black screen
		terminate _blackScreen;

		//Wait 5 seconds
		Sleep 5;

		//Remove the black screen slowly
		cutText ["","BLACK IN",10];

		//Write for display in the upper right corner
		hint "PARTIDA INICIADA SATISFACTORIAMENTE";

		//Wait 3 seconds
		Sleep 3;

		//Clean the upper right corner
		hint "";

		//Enable keyboard
		disableUserInput false;
	}
,""] call CBA_fnc_globalExecute;
//ARRIBA: esta función ejecuta el codigo al cliente con _count del servidor