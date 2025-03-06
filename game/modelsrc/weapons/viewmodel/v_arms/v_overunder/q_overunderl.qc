$modelname "weapons/c_sporting.mdl"

$bodygroup "studio"
{
	studio "ref_overunder.smd"
}

$cdmaterials "models/weapons/sporting/"

$mostlyopaque

$attachment "muzzle" "d_gun" 0.00 -42.00 1.50 rotate -0 -90 0
$attachment "1" "d_gun" 0.00 10.00 0.00 rotate 20 90 0

$include "../_bonemerger.qci"

///////////////////////////////////////////////////////
// pose params
///////////////////////////////////////////////////////

$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "left/s_walk.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "left/s_idle.smd" {
	fps 20
}


/////////////////////////////////////////////////////
/////////////////////////////////////////////////////

$sequence "deploy" {
	left/s_deploy.smd
	activity "ACT_VM_DRAW" -1
//	{ event AE_CL_PLAYSOUND 10 "Weapon_supershoty_ZM.Draw" }
	snap
	node "0"
	fps 60
}

///////////////////////////////////////////////////////
// idle
///////////////////////////////////////////////////////


$sequence "idle" {
	left/s_idle.smd
	idle_delta
	walk_ws
	activity "ACT_VM_IDLE" -1
	blend "move_x" -1 1
	blendwidth 3
	loop
}

/////////////////////////////////////////////////////
// shooting
/////////////////////////////////////////////////////


$sequence "firesingle" {
	left/s_fire.smd
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN muzzle" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "firedouble" {
	"left/s_fire_double.smd"
	activity "ACT_VM_SECONDARYATTACK" -1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN muzzle" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}


/////////////////////////////////////////////////////
/////////////////////////////////////////////////////


$sequence "reloadsingle" {
	left/s_reload.smd
	activity "ACT_VM_RELOAD_START" -1
	{ event AE_CL_PLAYSOUND 24 "Weapon_OverUnder_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 30 "Weapon_OverUnder_ZM.Reload2" }
	{ event 6001 50 "2" } // Eject shell
	{ event AE_CL_PLAYSOUND 90 "Weapon_OverUnder_ZM.Reload3" }
	{ event AE_WPN_INCREMENTAMMO 103 "" }
	{ event AE_CL_PLAYSOUND 124 "Weapon_OverUnder_ZM.Reload4" }
	{ event AE_WPN_PRIMARYATTACK 149 "" } // Next attack
	fadein 0.2
	fadeout 0.1
	fps 60
}


$sequence "reloadboth" {
	left/s_reload_empty.smd
	activity "ACT_VM_RELOAD" -1
	{ event AE_CL_PLAYSOUND 24 "Weapon_OverUnder_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 29 "Weapon_OverUnder_ZM.Reload2" }
	{ event 6001 45 "2" } // Eject brass
	{ event 6001 45 "2" }
	{ event AE_CL_PLAYSOUND 91 "Weapon_OverUnder_ZM.Reload3" }
	//{ event AE_WPN_INCREMENTAMMO 150 "" }
	{ event AE_CL_PLAYSOUND 123 "Weapon_OverUnder_ZM.Reload3" }
	{ event AE_WPN_INCREMENTAMMO 129 "" }
	//{ event AE_WPN_PRIMARYATTACK 123 "" } // Next attack
	{ event AE_CL_PLAYSOUND 152 "Weapon_OverUnder_ZM.Reload4" }
	fadein 0.2
	fadeout 0.2
	fps 60
}