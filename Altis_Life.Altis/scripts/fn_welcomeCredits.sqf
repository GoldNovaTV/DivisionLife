/*
	File: welcome.sqf
	Author: ZedBuster
        Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/
 
_onScreenTime = 5;
 
sleep 5; //Wait in seconds before the credits start after player is in-game
playSound "Intro"; // This calls the code inside of description.ext
 
_role1 = "Division Nation";
_role1names = ["Welcome to the Division Altis Life RPG."];
_role2 = "Use the Map!";
_role2names = ["Most of the basic laws, and controls are explained by selecting the M key, and choosing the options on the side of the map"]; 
_role3 = "Server Rules";
_role3names = ["Please read the entire server rules here: http://divison-nation.enjin.com"];
_role4 = "Altis Police Department";
_role4names = ["The Altis Police Department are looking for recruits!<br />apply here: http://divison-nation.enjin.com"];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#00A4E0' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names]
];