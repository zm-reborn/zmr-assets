
//$modelname "weapons/c_airweight.mdl"
$modelname "weapons/c_snubnose.mdl"

$bodygroup "studio"
{
	studio "ref_chiefspecial.smd"
}

$cdmaterials "models\weapons\snubnose_zmr\"
// sw36.vmt, speedstrip.vmt
$cdmaterials "models\weapons\revolver_zmr\"
// boolets

$attachment "muzzle" "d_gun" 0.00 -6.00 1.70 rotate 0 -90 0
$attachment "1" "d_gun" 1.00 6.00 -1.00 rotate -0 90 0

$include "../_bonemerger.qci"

$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "left/s_walk.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "left/s_idle.smd" {
	fps 15
}

$sequence "idle" {
	left/s_idle.smd
	idle_delta
	walk_ws
	activity "ACT_VM_IDLE" -1
	blend "move_x" -1 1
	blendwidth 3
	snap
	loop
}

// ===================================================
// ===================================================
// =======draw========================================

$sequence "deploy" {
	left/s_deploy.smd
	activity "ACT_VM_DRAW" -1
	snap
	fps 60
}

$sequence "holster" {
	left/s_idle.smd
	activity "ACT_VM_HOLSTER" -1
	snap
	fps 9999
}

// ===================================================
// ===================================================
// =======fires=======================================

$sequence "fire" {
	left/s_fire.smd
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event AE_CL_PLAYSOUND 2 "Weapon_Snubnose_ZM.Prepare" }
	{ event AE_MUZZLEFLASH 16 "357 MUZZLE" }
	{ event AE_ZM_REVOLVERSHOOT 16 "" }
	snap
	fps 60
}

$sequence "altfire" {
	"left/s_fire_alt.smd"
	activity "ACT_VM_SECONDARYATTACK" -1
	{ event AE_CL_PLAYSOUND 0 "Weapon_Snubnose_ZM.Prepare" }
	{ event AE_MUZZLEFLASH 7 "357 MUZZLE" }
	{ event AE_ZM_REVOLVERSHOOT 7 "" }
	snap
	fps 60
}
// ===================================================
// ===================================================
// ======reloads======================================


$sequence "reload" {
	left/s_reload.smd
	activity "ACT_VM_RELOAD" -1
	{ event AE_CL_PLAYSOUND 19 "Weapon_Snubnose_ZM.Reload1" } // open
	{ event AE_CL_PLAYSOUND 55 "Weapon_Snubnose_ZM.Reload2" } // eject
	{ event AE_CL_PLAYSOUND 116 "Weapon_Snubnose_ZM.Reload3" } // insert
	{ event AE_CL_PLAYSOUND 155 "Weapon_Snubnose_ZM.Reload3" } // insert
	{ event AE_CL_PLAYSOUND 200 "Weapon_Snubnose_ZM.Reload3" } // insert
	{ event AE_CL_PLAYSOUND 254 "Weapon_Snubnose_ZM.Reload4" } // close
	{ event 6001 70 "0" }
	{ event 6001 70 "0" }
	{ event 6001 70 "0" }
	{ event 6001 70 "0" }
	{ event 6001 70 "0" }
	{ event AE_WPN_INCREMENTAMMO 260 "" }
	snap
	fps 60
}