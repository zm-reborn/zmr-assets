
$modelname "weapons/c_sledham_zmr.mdl"

$bodygroup "stoodio"
{
	studio "ref_sledgehammer.smd"
}

$cdmaterials "models\weapons\sledham_zmr\"
// sledham.vmt

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
	fadein 0.1
	fadeout 0.1
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

$sequence "attack1" {
	left/s_lightattack.smd
	activity "ACT_VM_HITCENTER" -1
	{ event AE_ZM_MELEEHIT 44 "" }
	fadein 0.1
	fadeout 0.1
	fps 60
}

$sequence "attack2" {
	left/s_heavyattack.smd
	activity "ACT_VM_HITCENTER2" -1
	{ event AE_ZM_MELEEHIT 89 "" }
	fadein 0.1
	fadeout 0.1
	fps 60
}

