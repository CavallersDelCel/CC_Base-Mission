/****************************************************************

	Cavallers del Cel Mission Framework

	Script: Description mission
	Author: OMSmolina
	Script version: 1.0

	Game type: n/a
	File: 3dInit.sqf

//	Ejemplo carga de objetos 3d

	hint "Iniciando: Creando USS Nimitz";
	[0, {
		_nimitzInit = execVM"fnc\3d\nimitzInit.sqf";
		waitUntil {scriptDone _nimitzInit};
	}, ""] call CBA_fnc_globalExecute;

	sleep 5;

****************************************************************/

