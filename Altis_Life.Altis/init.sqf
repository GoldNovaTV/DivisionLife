MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
    
};


enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\fn_addATMS.sqf";
[] execVM "scripts\fn_noSideVoice.sqf";
[] execVM "scripts\fn_statusBar.sqf";
[] execVM "scripts\fn_welcomeCredits.sqf";
//[] execVM "scripts\snowfall.sqf";

StartProgress = true;