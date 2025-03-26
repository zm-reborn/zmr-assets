
$modelname "weapons/c_rifle_zm.mdl"

$bodygroup "stoodio"
{
	studio "ref_levergun.smd"
}

$cdmaterials "models\weapons\rifle_zmr\"
// 3151gun.vmt, 3151notgun.vmt, boolet315.vmt, sights315.vmt

$attachment "muzzle" "d_gun" 0 -29.3 1.80 rotate 0 -90 0
$attachment "1" "d_gun" 0.00 -5.50 1.60 rotate 0 180 0
// ironsight camera attachment vector [x,y,z] -> [y,x,z]
// wrt modeling program coords->compiled coords dont know why dont care
$attachment "ironsight" "b_zero" -8.17 -4.456 -1.923 rotate 0 0 0

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
//	snap
	fadein 0.1
	fadeout 0.1
	node base
	loop
}

// ===================================================
// ===================================================
// =======draw========================================

$sequence "deploy" {
	right/s_deploy.smd
	activity "ACT_VM_DRAW" -1 // 9
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
	{ event AE_MUZZLEFLASH 1 "357 MUZZLE" }
	snap
	node fire
	fps 60
}

$sequence "lever_normal" {
	right/s_lever1.smd
	activity "ACT_SHOTGUN_PUMP" 1
	{ event 6001 18 "1" }
//	{ event AE_CL_PLAYSOUND 13 "Weapon_Rifle_ZM.Special1" }
	{ event AE_CL_PLAYSOUND 13 "Weapon_Rifle_ZM.LeverBack" }
	{ event AE_CL_PLAYSOUND 28 "Weapon_Rifle_ZM.LeverForward2" }
	fadein 0.1
	fadeout 0
	node lever
	fps 60
	transition fire lever
}

$sequence "lever_side" {
	right/s_lever2.smd
	activity "ACT_SHOTGUN_PUMP" 1
	{ event 6001 18 "1" }
//	{ event AE_CL_PLAYSOUND 13 "Weapon_Rifle_ZM.Special1" }
	{ event AE_CL_PLAYSOUND 13 "Weapon_Rifle_ZM.LeverBack" }
	{ event AE_CL_PLAYSOUND 28 "Weapon_Rifle_ZM.LeverForward2" }
	fadein 0.1
	fadeout 0
	node lever
	fps 60
	transition fire lever
}



// ===================================================
// ===================================================
// =====irons=========================================
$sequence "ads_fire" {
	right/s_ads_fire.smd
	activity "ACT_VM_PRIMARYATTACK_SILENCED" -1
	{ event AE_MUZZLEFLASH 1 "357 MUZZLE" }
	snap
	fps 60
}

$sequence "ads_lever" {
	right/s_ads_lever.smd
	activity "ACT_VM_RELOAD_SILENCED" -1
	{ event 6001 18 "1" }
//	{ event AE_CL_PLAYSOUND 13 "Weapon_Rifle_ZM.Special1" }
	{ event AE_CL_PLAYSOUND 13 "Weapon_Rifle_ZM.LeverBack" }
	{ event AE_CL_PLAYSOUND 28 "Weapon_Rifle_ZM.LeverForward2" }
	fadein 0.1
	fadeout 0
	fps 60
}
// ===================================================
// ===================================================
// ======reloads======================================

$sequence "reload_empty" {
	right/s_reload_empty.smd
	activity "ACT_VM_RELOAD_EMPTY" -1
	{ event AE_CL_PLAYSOUND 13 "Weapon_Rifle_ZM.LeverBack" }
	{ event AE_CL_PLAYSOUND 67 "Weapon_Rifle_ZM.Reload" }
	{ event AE_CL_PLAYSOUND 85 "Weapon_Rifle_ZM.LeverForward" }
	{ event AE_CL_PLAYSOUND 130 "Weapon_Rifle_ZM.Reload" }
	{ event AE_WPN_INCREMENTAMMO 92 ""}
//	{ event AE_WPN_INCREMENTAMMO 134 ""} // technically this happens but nope ok
	fadein 0.1
	fadeout 0.1
	fps 60
}


$sequence "reload_start" {
	right/s_reload_start.smd
	activity "ACT_VM_RELOAD_START" -1
	{ event AE_CL_PLAYSOUND 40 "Weapon_Rifle_ZM.Reload" }
	{ event AE_WPN_INCREMENTAMMO 40 ""}
	fadein 0.1
	fadeout 0.1
	fps 60
}


$sequence "reload" {
	right/s_reload.smd
	activity "ACT_VM_RELOAD" -1
	{ event AE_CL_PLAYSOUND 45 "Weapon_Rifle_ZM.Reload" }
	{ event AE_WPN_INCREMENTAMMO 45 ""}
	fadein 0.1
	fadeout 0.01
	fps 60
	node rel
	transition rel rel
}

$sequence "reload_end" {
	right/s_reload_end.smd
	activity "ACT_VM_RELOAD_FINISH" -1
	fadein 0
	fadeout 0.1
	fps 60
//	node relend
//	transition rel relend
}
