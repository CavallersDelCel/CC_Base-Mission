/****************************************************************

Cavallers del Cel Mission Framework

Script: Mission init
Author: OMSmolina, TBlack
Script version: 1.0

Game type: n/a
File: missionInit.sqf

****************************************************************/

//Define private variables
private ["_3DInit"];

//From here it runs only on server
if (!isServer) exitWith {};

[-1,
	{
		
		//Load and runs scripts objects and expected to be charged (waitUntil)
		_3DInit = execVM "fnc\objects\objectsInit.sqf";
		waitUntil {scriptDone _3DInit};

	}
,""] call CBA_fnc_globalExecute;
//ARRIBA: esta función ejecuta el codigo al cliente con _count del servidor
