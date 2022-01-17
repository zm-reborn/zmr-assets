// Created by Crowbar 0.44.0.0

$modelname "weapons/c_molotov_zmr.mdl"

$bodygroup "stoodio"
{
	studio "ref.smd"
}

$surfaceprop "default"

$contents "solid"

$opaque

//$mostlyopaque

$maxeyedeflection 90

$cdmaterials "models\weapons\molotolo\"


$include "../shared.qci"

$include "../arm_bonemerge.qci"


///////////////////////////////////////////////////////
// pose params
///////////////////////////////////////////////////////

$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "walk.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "idle.smd" {
	fps 60
}

///////////////////////////////////////////////////////
// end.of pose params
///////////////////////////////////////////////////////

///////////////////////////////////////////////////////
// jigglebones
///////////////////////////////////////////////////////

$jigglebone "bone001"
{
	is_flexible
	{
		length 40
		tip_mass 40
		angle_constraint 10
		pitch_stiffness 160
		pitch_damping 3
		yaw_stiffness 160
		yaw_damping 3
//		pitch_constraint 5 30
//		yaw_constraint 0 0
	}
}
$jigglebone "bone002"
{
	is_flexible
	{
		length 50
		tip_mass 20
		angle_constraint 20
		pitch_stiffness 90
		pitch_damping 3
		yaw_stiffness 90
		yaw_damping 3
//		pitch_constraint 5 30
//		yaw_constraint 0 0
		}
}
$jigglebone "bone003"
{
	is_flexible
	{
		length 60
		tip_mass 10
		angle_constraint 30
		pitch_stiffness 30
		pitch_damping 2
		yaw_stiffness 30
		yaw_damping 2
//		pitch_constraint 5 30
//		yaw_constraint 0 0
		}
}

///////////////////////////////////////////////////////
// end.of jigglebones
///////////////////////////////////////////////////////


$sequence "idle" {
	"idle.smd"
	idle_delta
	walk_ws
	activity "ACT_VM_IDLE" -1
	blend "move_x" -1 1
	blendwidth 3
	loop
}


$sequence "deploy" {
	"deploy.smd"
	activity "ACT_VM_DRAW" -1
//	{ event AE_CL_PLAYSOUND 0 "Weapon_MIXTAPE.deploy" }
	snap
	fps 60
}


$sequence "light" {
	"light.smd"
	activity "ACT_VM_PRIMARYATTACK_1" -1
//	{ event AE_CL_PLAYSOUND 0 "Weapon_MIXTAPE.heyoverhere" }
	{ event 3900 60 "" }
	fadein 0.1
	fadeout 0.1
	fps 60
}



$sequence "readytothrow" {
	"readythrow.smd"
	activity "ACT_VM_PRIMARYATTACK_4" -1
	{ event 3900 30 "" }
	fadein 0.1
	fadeout 0.1
	fps 60
}

$sequence "throw" {
	"throw.smd"
	activity "ACT_VM_THROW" -1
//	{ event AE_CL_PLAYSOUND 0 "Weapon_MIXTAPE.yeet" }
	{ event 3005 20 "" }
	snap
	fps 60
}
