
$modelname "weapons/c_crowbar_zmr.mdl"

$bodygroup "stoodio"
{
	studio "ref_crowbar.smd"
}

$cdmaterials "models/weapons/crowbar_zmr"

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

$sequence "attack1" {
	left/s_swing1.smd
	activity "ACT_VM_HITCENTER" 1
//	{ event AE_ZM_MELEEHIT 3 "" }
	snap
	fps 60
}

$sequence "attack1miss" {
	left/s_swing1_miss.smd
	activity "ACT_VM_MISSCENTER" 1
	snap
	fps 60
}

$sequence "attack2" {
	left/s_swing2.smd
	activity "ACT_VM_HITCENTER" 2
//	{ event AE_ZM_MELEEHIT 3 "" }
	snap
	fps 60
}

$sequence "attack2miss" {
	left/s_swing2_miss.smd
	activity "ACT_VM_MISSCENTER" 2
	snap
	fps 60
}
