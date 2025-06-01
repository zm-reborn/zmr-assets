
$modelname "weapons/c_revolver_new.mdl"
//$modelname "weapons/c_revolver_zmr.mdl"

$bodygroup "stoodio"
{
	studio "ref_revolver.smd"
}

$cdmaterials "models\weapons\revolver_zmr\"

$attachment "muzzle" "d_gun" 0.00 -10.50 1.90 rotate -0 -90 0
$attachment "1" "d_gun" 2.20 5.00 2.00 rotate -0 90 0

$include "../_bonemerger.qci"

$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "right/s_walk.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "right/s_idle.smd" {
	fps 60
}

$sequence "idle" {
	right/s_idle.smd
	idle_delta
	walk_ws
	activity "ACT_VM_IDLE" -1
	blend "move_x" -1 1
	blendwidth 3
	fadein 0.1
	fadeout 0.1
	loop
}

// ===================================================
// ===================================================
// =======draw========================================

$sequence "deploy" {
	right/s_deploy.smd
	activity "ACT_VM_DRAW" -1
	snap
	fps 60
}

$sequence "holster" {
	right/s_idle.smd
	activity "ACT_VM_HOLSTER" -1
	snap
	fps 9999
}

// ===================================================
// ===================================================
// =======fires=======================================

$sequence "fire" {
	right/s_fire.smd
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event AE_CL_PLAYSOUND 7 "Weapon_Revolver_ZM.Prepare" }
	{ event AE_MUZZLEFLASH 20 "357 MUZZLE" }
	{ event AE_ZM_REVOLVERSHOOT 19 "" }
	fadein 0.1
	fadeout 0.2
//	snap
	fps 60
}

$sequence "altfire" {
	"right/s_altfire.smd"
	activity "ACT_VM_SECONDARYATTACK" -1
	{ event AE_CL_PLAYSOUND 0 "Weapon_Revolver_ZM.Prepare" }
	{ event AE_MUZZLEFLASH 8 "357 MUZZLE" }
	{ event AE_ZM_REVOLVERSHOOT 7 "" }
//	fadein 0.1
//	fadeout 0.1
	snap
	fps 60
}
/*
$sequence "dryfire" {
	"right/s_fire.smd"
	activity "ACT_VM_DRYFIRE" -1
	fadein 0.1
	fadeout 0.1
	// snap
	fps 60
}
*/
// ===================================================
// ===================================================
// ======reloads======================================


$sequence "reload" {
	right/s_reload.smd
	activity "ACT_VM_RELOAD" -1
	{ event AE_CL_PLAYSOUND 15 "Weapon_Revolver_ZM.Reload1" } //open
	{ event AE_CL_PLAYSOUND 23 "Weapon_Revolver_ZM.Reload2" } //eject
	{ event AE_CL_PLAYSOUND 82 "Weapon_Revolver_ZM.Reload3" } //insert
	{ event AE_CL_PLAYSOUND 130 "Weapon_Revolver_ZM.Reload4" } //close
	{ event AE_CL_PLAYSOUND 165 "Weapon_Revolver_ZM.Reload5" } //spin
	{ event 6001 40 "0" }
	{ event 6001 40 "0" }
	{ event 6001 40 "0" }
	{ event 6001 40 "0" }
	{ event 6001 40 "0" }
	{ event 6001 40 "0" }
	{ event AE_WPN_INCREMENTAMMO 105 "" }
	fadein 0.1
	fadeout 0.2
	fps 60
}

/*
$sequence "reload" {
	"anims/reload_wspdloader.smd"
	activity "ACT_VM_RELOAD" -1
	{ event AE_CL_PLAYSOUND 11 "Weapon_Revolver_ZM.Reload" }
	{ event 6001 50 "0" }
	{ event 6001 50 "0" }
	{ event 6001 50 "0" }
	{ event 6001 50 "0" }
	{ event 6001 50 "0" }
	{ event 6001 50 "0" }
	{ event AE_WPN_INCREMENTAMMO 110 "" }
	fadein 0.1
	fadeout 0.2
	fps 60
}
*/
