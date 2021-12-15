// Created by Crowbar 0.44.0.0


//$modelname "weapons/c_airweight.mdl"
$modelname "weapons/c_snubnose.mdl"

$bodygroup "studio"
{
	studio "gun.smd"
}

$cdmaterials "models\weapons\snubnose_zmr\"
// sw36.vmt, speed5loader.vmt
$cdmaterials "models\weapons\revolver_zmr\"
// boolets

$attachment "muzzle" "d_gun" 0.00 -6.00 1.70 rotate 0 -90 0
$attachment "1" "d_gun" 1.00 6.00 -1.00 rotate -0 90 0

$include "../shared.qci"

$include "../arm_bonemerge.qci"


$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "anims/walk.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "anims/idle.smd" {
	fps 60
}

$sequence "idle" {
	"anims/idle.smd"
	idle_delta
	walk_ws
	activity "ACT_VM_IDLE" -1
	blend "move_x" -1 1
	blendwidth 3
	loop
}

$sequence "deploy" {
	"anims/deploy.smd"
	activity "ACT_VM_DRAW" -1
	fadein 0
	fadeout 0.1
	fps 60
}

$sequence "fire" {
	"anims/fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event AE_CL_PLAYSOUND 0 "Weapon_Revolver_ZM.Prepare" }
	{ event AE_MUZZLEFLASH 25 "357 MUZZLE" }
	{ event AE_ZM_REVOLVERSHOOT 25 "" }
	fadein 0
	fadeout 0.1
	fps 60
}

$sequence "altfire" {
	"anims/fire2.smd"
	activity "ACT_VM_SECONDARYATTACK" -1
	{ event AE_MUZZLEFLASH 08 "357 MUZZLE" }
	{ event AE_ZM_REVOLVERSHOOT 08 "" }
	fadein 0
	fadeout 0.1
	// snap
	fps 60
}

$sequence "dryfire" {
	"anims/dryfire.smd"
	activity "ACT_VM_DRYFIRE" -1
	{ event AE_CL_PLAYSOUND 0 "Weapon_Revolver_ZM.Prepare" }
	snap
	fps 60
}

$sequence "reload" {
	"anims/reload.smd"
	activity "ACT_VM_RELOAD" -1
	{ event AE_CL_PLAYSOUND 25 "Weapon_Revolver_ZM.Reload" }
	{ event 6001 60 "0" }
	{ event 6001 61 "0" }
	{ event 6001 62 "0" }
	{ event 6001 63 "0" }
	{ event 6001 64 "0" }
	{ event AE_WPN_INCREMENTAMMO 142 "" }
	fadein 0
	fadeout 0.1
	fps 60
}
