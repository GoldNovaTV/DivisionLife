private["_allVeh","_pUID"];

sleep 5;
 
_allVeh = allMissionObjects "Car" + allMissionObjects "Air" + allMissionObjects "Ship";
_name = profileName;
    
{
	_owners = _x getVariable ["vehicle_info_owners",[]];
	_index = [_name,_owners] call fnc_index;
	if(!(_index == -1)) then {
		life_vehicles set[count life_vehicles, _x];
	};	
} foreach _allVeh;