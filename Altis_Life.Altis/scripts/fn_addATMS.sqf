// Add ATMS

diag_Log format["Starting ATMs initialization."];

_atmPosArray = [ [16660,16099.6,17.527], 
 [14610.1,16819.7,18.0561], 
 [17431.6,13948.1,5.75651], 
 [16886.1,12808,19.5071], 
 [16774.8,12594.6,18.3932], 
 [16889.7,12670.5,20.9893], 
 [16702.7,12511.1,11.2303], 
 [16816.7,12579.4,19.3609], 
 [16453.4,17221.1,24.2551], 
 [18102.5,15263.6,25.3891], 
 [12662.9,14265.5,5.979], 
 [12589.4,14374.4,16.1421], 
 [14913.1,17619.6,19.9579], 
 [12415.7,15561.3,24.9635], 
 [14901.8,11061,8.93758], 
 [11726.2,13756.5,13.5133], 
 [18779.9,16633.7,32.9097], 
 [13980.5,18634.7,23.7963], 
 [19306.5,13232.1,37.3293], 
 [14007,18780,24.6141], 
 [11008.4,13474.7,27.4781], 
 [10655.9,12201.3,16.6025], 
 [20191.7,11732.4,40.302], 
 [20303.8,11698.2,50.6103], 
 [20936.4,16846.1,39.1126], 
 [20937.5,16964.4,44.155], 
 [14616.6,20810.3,49.0575], 
 [21263.6,16314.5,21.7947], 
 [9297.11,15871,120.394], 
 [10304.8,19075.9,127.859], 
 [9018.87,12029.3,26.2813], 
 [8626.68,18265.1,181.843], 
 [20475.7,8886.04,37.9287], 
 [7406.35,15411,55.9932], 
 [9434.56,20286.3,124.236], 
 [7081.58,16402.5,108.084], 
 [6800.42,15588.9,41.2197], 
 [20778.6,6802.16,36.1989], 
 [4920.61,16156.4,77.6487], 
 [4533.39,14037.3,38.5398], 
 [5077.96,11264.2,51.2625], 
 [3925.02,13854.2,35.2561], 
 [4181.9,11785.4,53.6173], 
 [3777.4,13517.8,12.6269], 
 [3698.84,13199.2,12.0577], 
 [3715.01,13030.8,17.8538], 
 [3593.64,13994.7,10.6242], 
 [3697.72,12254.6,27.5926], 
 [3574.93,12800.7,11.7067], 
 [3739.72,17656.5,14.8004], 
 [3497.09,13000.5,8.38227], 
 [3701.12,11801.5,14.9176], 
 [3416.05,13279.2,2.16466], 
 [3799.2,11093.6,5.89633], 
 [25618.6,21353.5,21.1123], 
 [3282,12963.6,2.47564], 
 [27030.1,23282.8,21.9813]];
 
_atmArray =  ["540126: atm_02_f.p3d",
"493919: atm_01_f.p3d",
"900344: atm_01_f.p3d",
"920403: atm_01_f.p3d",
"923613: atm_02_f.p3d",
"923475: atm_01_f.p3d",
"925134: atm_02_f.p3d",
"923614: atm_01_f.p3d",
"497733: atm_02_f.p3d",
"559776: atm_01_f.p3d",
"705107: atm_02_f.p3d",
"702664: atm_02_f.p3d",
"482872: atm_02_f.p3d",
"679503: atm_01_f.p3d",
"950185: atm_02_f.p3d",
"842463: atm_02_f.p3d",
"548912: atm_02_f.p3d",
"448565: atm_02_f.p3d",
"908551: atm_02_f.p3d",
"447154: atm_01_f.p3d",
"844193: atm_01_f.p3d",
"868789: atm_01_f.p3d",
"1015235: atm_02_f.p3d",
"1015413: atm_01_f.p3d",
"1652475: atm_02_f.p3d",
"1650588: atm_02_f.p3d",
"1315497: atm_01_f.p3d",
"1671253: atm_01_f.p3d",
"599690: atm_01_f.p3d",
"1347135: atm_01_f.p3d",
"813810: atm_02_f.p3d",
"580877: atm_02_f.p3d",
"392545: atm_01_f.p3d",
"1103719: atm_01_f.p3d",
"1282853: atm_02_f.p3d",
"1067892: atm_01_f.p3d",
"1102287: atm_01_f.p3d",
"421286: atm_02_f.p3d",
"1057805: atm_02_f.p3d",
"1143530: atm_01_f.p3d",
"1192106: atm_01_f.p3d",
"1110951: atm_02_f.p3d",
"1179447: atm_02_f.p3d",
"1114595: atm_01_f.p3d",
"1117312: atm_01_f.p3d",
"1121731: atm_02_f.p3d",
"1109867: atm_02_f.p3d",
"1132446: atm_02_f.p3d",
"1123659: atm_01_f.p3d",
"1449114: atm_02_f.p3d",
"1121505: atm_01_f.p3d",
"1135496: atm_01_f.p3d",
"1113679: atm_02_f.p3d",
"1140282: atm_02_f.p3d",
"1572881: atm_02_f.p3d",
"1119905: atm_02_f.p3d",
"1558375: atm_01_f.p3d"];


_newATMArray = [];
{

	_atmSplitString = [_x, ":"] call BIS_fnc_splitString;
	_atmID = parseNumber (_atmSplitString select 0);
	_atmType = format ["land_%1",[_atmSplitString select 1, 1,-4] call BIS_fnc_trimString];

	_theOldATM = (_atmPosArray select _foreachindex) nearestObject _atmID;
	_theOldATMPos = getPos _theOldATM;
	_theOldATMDir = getDir _theOldATM;
	_theOldATM setDamage 1;

	_theNewATM = _atmType createVehicleLocal _theOldATMPos;
	_theNewATM setDir _theOldATMDir;
	_theNewATM setPosASL (_atmPosArray select _foreachindex);
	_theNewATM allowDamage false;
	_theNewATM enableSimulation false;

	_theNewATM addAction["<t color='#ADFF2F'>ATM</t>",life_fnc_atmMenu,"",0,false,false,"",'((_this distance _target) < 3)'];
/* 	_theNewATM addAction["Banking Insurance ($1,000)",
	{
		if(life_atmcash > 1000) then {life_has_insurance = true; life_atmcash = life_atmcash - 1000;};
	}
	,"",0,false,false,"",'(!life_has_insurance) && ((_this distance _target) < 3)']; */
	_newATMArray = _newATMArray + [_theNewATM];
	
	_marker = createMarkerLocal [format["ATM_spawnedMarker_%1",_atmID],visiblePosition _theNewATM];
	_marker setMarkerColor "ColorGreen";
	_marker setMarkerType "loc_Tourism";

} foreach _atmArray;

// re add the old atms at cop bases
{
	_atmPos = _x select 0;
	_atmDir = _x select 1;
	
	_theNewATM = "Land_atm_02_f" createVehicleLocal _atmPos;
	_theNewATM setDir (_atmDir + 180);
	_theNewATM setPosASL _atmPos;
	_theNewATM allowDamage false;
	_theNewATM enableSimulation false;

	_theNewATM addAction["<t color='#ADFF2F'>ATM</t>",life_fnc_atmMenu,"",0,false,false,"",'((_this distance _target) < 3)'];
/* 	_theNewATM addAction["Banking Insurance ($1,000)",
	{
		if(life_atmcash > 1000) then {life_has_insurance = true; life_atmcash = life_atmcash - 1000;};
	}
	,"",0,false,false,"",'(!life_has_insurance) && ((_this distance _target) < 3)']; */
	_newATMArray = _newATMArray + [_theNewATM];
	
	_marker = createMarkerLocal [format["ATM_spawnedMarker_%1",_atmPos],visiblePosition _theNewATM];
	_marker setMarkerColor "ColorGreen";
	_marker setMarkerType "loc_Tourism";

} foreach [[[13813.8,18984.2,20.1607],142.395], [[23535.4,19959.8,13.3099],144.94], [[15197.5,17333.8,17.9218],227.717], [[16555.2,12779.5,11.0153],31.246]];

/*
{	
	_x addAction["<t color='#ADFF2F'>ATM</t>",life_fnc_atmMenu]; 
	_x addAction["Banking Insurance ($1,000)",
	{
		if(life_atmcash > 1000) then {life_has_insurance = true};
	}
	,"",0,false,false,"",'!life_has_insurance'];
}forEach _theATMs;
*/
diag_Log format["ATMs initialized. Num ATMs: %1",(count _newATMArray)];