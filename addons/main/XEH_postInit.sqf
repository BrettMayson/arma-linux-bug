addMissionEventHandler ["ExtensionCallback", {
	params ["_name", "_function", "_data"];
	if !(_name == "test") exitWith {};
	(format ["%1 - %2", _function, _data]) remoteExec ["systemChat", 0];
}];

// "test" callExtension ["ping", ["some text"]]
