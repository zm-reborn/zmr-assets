
$modelname "weapons/c_r700_zm_lh.mdl"

$bodygroup "stoodio"
{
	studio "ref_r700.smd"
}

$cdmaterials "models\weapons\r700\"
// r700stock r700gun r700scope boolet3006.vmt
$cdmaterials "dev"
// scope.vmt

// not actually
// $cdmaterials "models\weapons\scope\"
// all the other materials


$attachment "muzzle" "d_gun" 0 -38.90 1.80 rotate 0 -90 0
$attachment "1" "d_gun" -0.00 -3.30 1.50 rotate 0 180 0
$attachment "ironsight" "b_zero" 2 6.723 -3.068 rotate 0 0 0
$attachment "scope_end" "Dummy002" 0 0 0 rotate 0 -90 0
//  3dMax x y z -> ironsight origin -y -x z
// -y is dist to scope

$include "../_bonemerger.qci"


$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "left/s_walk.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "left/s_idle.smd" {
	fps 60
}

$sequence "idle" {
	left/s_idle.smd
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
	left/s_deploy.smd
	activity "ACT_VM_DRAW" -1 // 9
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
	{ event AE_MUZZLEFLASH 1 "357 MUZZLE" }
	snap
	fps 60
}

$sequence "bolt_cycle" {
	"left/s_boltcycle.smd"
	activity "ACT_SHOTGUN_PUMP" -1
	{ event AE_CL_PLAYSOUND 19 "Weapon_R700_ZM.BoltOpen" }
	{ event AE_CL_PLAYSOUND 34 "Weapon_R700_ZM.BoltClose" }
	{ event 6001 33 "1" }
	snap
	fps 60
}

// ===================================================
// ===================================================
// =====irons=========================================
/*$sequence "ads_fire" {
	left/s_fire.smd
	activity "ACT_VM_PRIMARYATTACK_SILENCED" -1
	{ event AE_MUZZLEFLASH 1 "357 MUZZLE" }
	snap
	fps 60
}
*/
$sequence "ads_bolt_cycle" {
	left/s_boltcycle_ads.smd
	activity "ACT_VM_RELOAD_SILENCED" -1
	{ event AE_CL_PLAYSOUND 19 "Weapon_R700_ZM.BoltOpen" }
	{ event AE_CL_PLAYSOUND 34 "Weapon_R700_ZM.BoltClose" }
	{ event 6001 32 "1" }
	snap
	fps 60
}
// ===================================================
// ===================================================
// ======reloads======================================

$sequence "reload_empty" {
	"left/s_reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" -1
	{ event AE_CL_PLAYSOUND 20 "Weapon_R700_ZM.BoltOpen" }
	{ event AE_CL_PLAYSOUND 89 "Weapon_R700_ZM.InsertRound" }
	{ event AE_WPN_INCREMENTAMMO 95 ""}
	snap
	fps 60
}

$sequence "reload_start" {
	"left/s_reload_start.smd"
	activity "ACT_VM_RELOAD_START" -1
	{ event AE_CL_PLAYSOUND 40 "Weapon_R700_ZM.BoltOpen" }
	snap
	fps 60
}

$sequence "reload" {
	"left/s_reload.smd"
	activity "ACT_VM_RELOAD" -1
	{ event AE_CL_PLAYSOUND 14 "Weapon_R700_ZM.InsertRound" }
	{ event AE_WPN_INCREMENTAMMO 20 ""}
	fadein 0.1
	fadeout 0.1
	fps 60
}

$sequence "reload_end" {
	"left/s_reload_end.smd"
	activity "ACT_VM_RELOAD_FINISH" -1
	{ event AE_CL_PLAYSOUND 44 "Weapon_R700_ZM.ReloadBoltClose" }
	snap
	fps 60
}