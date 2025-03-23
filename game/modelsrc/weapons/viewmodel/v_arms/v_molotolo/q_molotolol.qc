// Created by Crowbar 0.44.0.0

$modelname "weapons/c_molotov_zmr.mdl"

$bodygroup "stoodio"
{
	studio "ref_molotolo.smd"
}

$surfaceprop "default"

$contents "solid"

//$opaque
$mostlyopaque

$cdmaterials "models\weapons\molotolo\"

$include "../_bonemerger.qci"

///////////////////////////////////////////////////////
// pose params
///////////////////////////////////////////////////////

$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "left/s_walk.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "left/s_idle.smd" {
	fps 20
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


$jigglebone "flame1"
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 1000
		pitch_damping 10
		yaw_stiffness 1000
		yaw_damping 10
		along_stiffness 100
		along_damping 0
		angle_constraint 10
	}
}
$jigglebone "flame2"
{
	is_flexible
	{
		length 5
		tip_mass 0
		pitch_stiffness 1000
		pitch_damping 10
		yaw_stiffness 1000
		yaw_damping 10
		along_stiffness 100
		along_damping 0
		angle_constraint 39.999999
	}
}
$jigglebone "flame3"
{
	is_flexible
	{
		length 5
		tip_mass 0
		pitch_stiffness 1000
		pitch_damping 10
		yaw_stiffness 1000
		yaw_damping 10
		along_stiffness 100
		along_damping 0
		angle_constraint 90.000003
	}
}
$jigglebone "flame4"
{
	is_flexible
	{
		length 5
		tip_mass 0
		pitch_stiffness 1000
		pitch_damping 10
		yaw_stiffness 1000
		yaw_damping 10
		along_stiffness 100
		along_damping 0
		angle_constraint 90.000003
	}
}

///////////////////////////////////////////////////////
// end.of jigglebones
///////////////////////////////////////////////////////

$sequence "idle" {
	left/s_idle.smd
	idle_delta
	walk_ws
	activity "ACT_VM_IDLE" -1
	blend "move_x" -1 1
	blendwidth 3
	loop
}

$sequence "deploy" {
	"left/s_deploy.smd"
	activity "ACT_VM_DRAW" -1
//	{ event AE_CL_PLAYSOUND 0 "Weapon_MIXTAPE.deploy" }
	snap
	fps 60
}


$sequence "light" {
	"left/s_light.smd"
	activity "ACT_VM_PRIMARYATTACK_1" -1
//	{ event AE_CL_PLAYSOUND 0 "Weapon_MIXTAPE.heyoverhere" }
	{ event 3900 60 "" }
	fadein 0.1
	fadeout 0.1
	fps 60
}



$sequence "readytothrow" {
	"left/s_readythrow.smd"
	activity "ACT_VM_PRIMARYATTACK_4" -1
	{ event 3900 30 "" }
	fadein 0.1
	fadeout 0.1
	fps 60
}

$sequence "throw" {
	"left/s_throw.smd"
	activity "ACT_VM_THROW" -1
//	{ event AE_CL_PLAYSOUND 0 "Weapon_MIXTAPE.yeet" }
	{ event 3005 20 "" }
	snap
	fps 60
}
