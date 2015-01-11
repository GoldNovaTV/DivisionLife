#include <macro.h>
/*
	File: fn_clothing_whitelistedreb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Whitelisted Rebel clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Whitelisted Rebel Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["U_BG_Guerilla3_2",nil,2500];
		_ret pushBack ["U_IG_Guerilla1_1",nil,5000];
		_ret pushBack ["U_I_G_Story_Protagonist_F",nil,7500];
		_ret pushBack ["U_I_G_resistanceLeader_F",nil,11500];
		_ret pushBack ["U_O_SpecopsUniform_ocamo",nil,17500];
		_ret pushBack ["U_O_PilotCoveralls",nil,15600];
		_ret pushBack ["U_IG_leader",nil,15300];
		_ret pushBack ["U_O_GhillieSuit",nil,50000];
		_ret pushBack ["U_I_GhillieSuit","Ghilliesuit AAF",50000];
		_ret pushBack ["U_B_GhillieSuit","Ghilliesuit NATO",50000];
		_ret pushBack ["U_B_CTRG_2","Combat Uniform",15000];
		_ret pushBack ["U_B_CTRG_1","Combat UniformT",15000];
		_ret pushBack ["U_I_CombatUniform_shortsleeve",nil,15000];
		_ret pushBack ["U_I_CombatUniform",nil,15000];
		_ret pushBack ["U_O_OfficerUniform_ocamo",nil,15000];
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_ShemagOpen_tan",nil,850];
		_ret pushBack ["H_Shemag_olive",nil,850];
		_ret pushBack ["H_ShemagOpen_khk",nil,800];
		_ret pushBack ["H_HelmetO_ocamo",nil,2500];
		_ret pushBack ["H_MilCap_oucamo",nil,1200];
		_ret pushBack ["H_Bandanna_camo",nil,650];
		_ret pushBack ["H_MilCap_mcamo",nil,850];
		_ret pushBack ["H_MilCap_blue",nil,850];
		_ret pushBack ["H_PilotHelmetFighter_I",nil,1000];
		_ret pushBack ["H_CrewHelmetHeli_I",nil,1000];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,650],
			["G_Balaclava_combat",nil,650],
			["G_Balaclava_lowprofile",nil,650],
			["G_Balaclava_oli",nil,650],
			["G_Bandanna_aviator",nil,650],
			["G_Bandanna_beast",nil,650],
			["G_Bandanna_blk",nil,650],
			["G_Bandanna_khk",nil,650],
			["G_Bandanna_oli",nil,650],
			["G_Bandanna_shades",nil,650],
			["G_Bandanna_sport",nil,650],
			["G_Bandanna_tan",nil,650]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_Chestrig_khk",nil,1000];
		_ret pushBack ["V_RebreatherB",nil,2500];
		_ret pushBack ["V_BandollierB_khk",nil,4500];
		_ret pushBack ["V_BandollierB_blk",nil,4500];
		_ret pushBack ["V_BandollierB_cbr",nil,4500];
		_ret pushBack ["V_HarnessO_brn",nil,7500];
		_ret pushBack ["V_HarnessOSpec_brn",nil,7500];
		_ret pushBack ["V_TacVest_khk",nil,12500];
		_ret pushBack ["V_TacVest_camo",nil,12500];
        if(__GETC__(life_adminlevel) > 4) then
		{
		_ret pushBack ["V_PlateCarrierIA1_dgtl",nil,10000];
		_ret pushBack ["V_PlateCarrierIA2_dgtl",nil,10000];
		_ret pushBack ["V_PlateCarrierIAGL_dgtl",nil,10000];
		_ret pushBack ["V_PlateCarrier_Kerry",nil,10000];
		_ret pushBack ["V_PlateCarrierL_CTRG",nil,10000];
		_ret pushBack ["V_PlateCarrierH_CTRG",nil,10000];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_Parachute",nil,1000]
		];
	};
};

_ret;