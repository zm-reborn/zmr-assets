$modelname "weapons/c_sledham_zmr.mdl"

$bodygroup "studio"
{
	studio "ref_sledham.smd"
}

$cdmaterials "models\weapons\sledham_zmr\"
// sledham.vmt

$include "../shared.qci"

$include "../arm_bonemerge.qci"


$sequence "idle" {
	"idle.smd"
	activity "ACT_VM_IDLE" -1
	fadein 0.1
	fadeout 0.1
	fps 60
	loop
}

$sequence "attack1" {
	"swing_side.smd"
	activity "ACT_VM_HITCENTER" -1
	{ event AE_ZM_MELEEHIT 48 "" }
	fadein 0.1
	fadeout 0.1
	fps 60
}

$sequence "attack2" {
	"swing_topdown.smd"
	activity "ACT_VM_HITCENTER2" -1
	{ event AE_ZM_MELEEHIT 90 "" }
	fadein 0.1
	fadeout 0.1
	fps 60
}

$sequence "deploy" {
	"deploy.smd"
	activity "ACT_VM_DRAW" -1
	fadein 0.1
	fadeout 0.1
	fps 60
}
