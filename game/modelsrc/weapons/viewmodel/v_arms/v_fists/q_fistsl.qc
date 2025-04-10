
$modelname "weapons/c_fists_zm.mdl"

$body studio "ref_nothing.smd"

$include "../_bonemerger.qci"


$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "left\s_walk.smd" {
	fps 74.3
	loop
}
$animation "idle_delta" "left\s_idle.smd" fps 60;

$sequence "deploy" {
	"left\s_deploy.smd"
	activity "ACT_VM_DRAW" -1
	snap
	fps 60
}

$sequence "idle" {
	"left\s_idle.smd"
	idle_delta
	walk_ws
	activity "ACT_VM_IDLE" -1
	blend "move_x" -1 1
	blendwidth 3
	loop
}

$sequence hold {
	"left\s_hold.smd"
	activity "ACT_VM_RELOAD" -1
	loop
	fps 60
	}

$sequence punch {
	"left\s_punch.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	activity "ACT_VM_HITCENTER" 7
	{ event AE_ZM_MELEEHIT 7 "" }
	snap
	fps 60
}

$sequence haymaker {
	"left\s_haymaker.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	activity "ACT_VM_HITCENTER" 7
	{ event AE_ZM_MELEEHIT 7 "" }
	snap
	fps 60
}

$sequence throw {
	left\s_throw
	activity "ACT_VM_SECONDARYATTACK" -1
	snap
	fps 60
}
