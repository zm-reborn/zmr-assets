
$modelname "weapons/c_shotgun_new.mdl"

$bodygroup "stoodio"
{
	studio "ref_rem870.smd"
}

$cdmaterials "models\weapons\new_shotgun2\"
// wood.vmt gun.vmt
$cdmaterials "models\weapons\sporting\"
// shotshell.vmt

$attachment "muzzle" "d_gun" 33.00 -0.00 1.00 rotate 0 0 0
$attachment "1" "d_gun" 7.00 -0.50 0.70 rotate 0 -90 0

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
$sequence "deploy_empty" {
	right/s_deploy_empty.smd
	activity "ACT_VM_DRAW_empty" -1
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
	{ event AE_MUZZLEFLASH 0 "SHOTGUN muzzle" }
	snap
	fps 60
}

$sequence "rack" {
	right/s_pump1.smd
	activity "ACT_SHOTGUN_PUMP" 1
	{ event 6001 9 "2" } // Eject brass
	fadein 0.1
	fadeout 0
	fps 60
}
$sequence "rack2" {
	right/s_pump2.smd
	activity "ACT_SHOTGUN_PUMP" 1
	{ event 6001 9 "2" } // Eject brass
	fadein 0.1
	fadeout 0
	fps 60
}

// ===================================================
// ===================================================
// ======reloads======================================


$sequence "reload_start" {
	right/s_reload_start.smd
	activity "ACT_VM_RELOAD_START" -1
	fadein 0.1
	fadeout 0.1
	fps 60
}

$sequence "reload" {
	right/s_reload.smd
	activity "ACT_VM_RELOAD" -1
	{ event AE_WPN_INCREMENTAMMO 25 ""}
	fadein 0.1
	fadeout 0.01
	fps 60
}

$sequence "reload_end" {
	right/s_reload_end.smd
	activity "ACT_VM_RELOAD_FINISH" -1
	fadein 0
	fadeout 0.1
	fps 60
}

$sequence "reload_empty" {
	"right/s_reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" -1
	{ event AE_CL_PLAYSOUND 14 "Weapon_Shotgun_ZM.EmptyPump" }
	{ event AE_CL_PLAYSOUND 36 "Weapon_Shotgun_ZM.EmptyInsert" }
	{ event AE_CL_PLAYSOUND 53 "Weapon_Shotgun_ZM.EmptyPump2" }
	{ event AE_WPN_INCREMENTAMMO 59 "" }
	snap
	fps 60
}


$sequence "reload_empty_last_one" {
	"right/s_reload_last_one.smd"
//	activity "ACT_VM_RELOAD______" -1
	{ event AE_WPN_INCREMENTAMMO 53 "" }
	fadein 0.05
	fadeout 0.05
	fps 60
}
