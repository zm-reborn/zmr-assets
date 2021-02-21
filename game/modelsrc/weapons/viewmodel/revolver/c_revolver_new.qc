// Created by Crowbar 0.44.0.0

$modelname "weapons/c_revolver_new.mdl"
//$modelname "weapons/c_revolver_zm.mdl"

$bodygroup "studio"
{
	studio "gun.smd"
}

$cdmaterials "models\weapons\revolver_zmr\"

$attachment "muzzle" "d_gun" 0.00 10.50 1.90 rotate -0 90 0
$attachment "1" "d_gun" -3.20 -5.00 2.00 rotate -0 -90 0


$include "../shared.qci"

$include "../arm_bonemerge.qci"

$sequence "idle" {
	"anims/idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.1
	fadeout 0.1
	fps 60
	loop
}

$sequence "draw" {
	"anims/draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0
	fadeout 0.1
	fps 60
}

$sequence "fire" {
	"anims/fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 22 "357 MUZZLE" }
	{ event AE_ZM_REVOLVERSHOOT 22 "" }
	fadein 0.1
	fadeout 1
	fps 60
}

$sequence "altfire" {
	"anims/altfire.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event AE_MUZZLEFLASH 10 "357 MUZZLE" }
	{ event AE_ZM_REVOLVERSHOOT 10 "" }
	fadein 0.05
	fadeout 0.1
	// snap
	fps 60
}

$sequence "dryfire" {
	"anims/idle.smd"
	activity "ACT_VM_DRYFIRE" 1
	fadein 0.1
	fadeout 0.2
	// snap
	fps 60
}

$sequence "reload" {
	"anims/reload21.smd"
	activity "ACT_VM_RELOAD" 1
	{ event AE_CL_PLAYSOUND 11 "Weapon_Revolver_ZM.Reload" }
	{ event 6001 50 "0" }
	{ event 6001 50 "0" }
	{ event 6001 50 "0" }
	{ event 6001 50 "0" }
	{ event 6001 50 "0" }
	{ event 6001 50 "0" }
	fadein 0.1
	fadeout 0.2
	fps 60
}
