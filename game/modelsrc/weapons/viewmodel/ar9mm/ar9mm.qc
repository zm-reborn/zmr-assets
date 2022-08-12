$modelname "weapons/c_ar9mm.mdl"
$cdmaterials "models/weapons/ar9mm"
// ar9.vmt
$cdmaterials "models/weapons/glock17"
// glock.vmt (9mm boolet)

$bodygroup "studio"
{
	studio "g71.smd"
}

$opaque

$attachment "muzzle" "d_gun" 0.00 -20.60 2.20 rotate -0 -90 0
$attachment "1" "d_dustcover" 0.00 0.00 -0.50 rotate 0 0 0

$include "../shared.qci"


// Bone merge the arms.
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
	anims/idle.smd
	idle_delta
	walk_ws
	activity "ACT_VM_IDLE" -1
	blend "move_x" -1 1
	blendwidth 3
	snap
	fps 60
	loop
}

$sequence "fire1" {
	"anims/fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	snap
	fps 60
}

$sequence "fire2" {
	"anims/fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	snap
	fps 60
}
$sequence "fire3" {
	"anims/fire3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	snap
	fps 60
}

$sequence "fire_secondary" {
	"anims/3roundburst.smd"
	activity "ACT_VM_SECONDARYATTACK" -1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event AE_MUZZLEFLASH 5 "SMG1 muzzle" }
	{ event AE_MUZZLEFLASH 10 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	snap
	fps 60
}

$sequence "reload" {
	"anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event AE_WPN_INCREMENTAMMO 125 "" }
	{ event AE_CL_PLAYSOUND 40 "Weapon_SMG_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 123 "Weapon_SMG_ZM.Reload2" }
	snap
	fps 60
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event AE_WPN_INCREMENTAMMO 105 "" }
	{ event AE_CL_PLAYSOUND 32 "Weapon_SMG_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 96 "Weapon_SMG_ZM.Reload2" }
	{ event AE_CL_PLAYSOUND 135 "Weapon_SMG_ZM.Reload3" }
	snap
	fps 60
}


$sequence "deploy" {
	"anims\deploy.smd"
	activity "ACT_VM_DRAW" 1
	{ event AE_CL_PLAYSOUND 10 "Weapon_SMG_ZM.Draw" }
	snap
	fps 60
}

$sequence "deploy_alt" {
	"anims\deploy_mw2.smd"
	activity "ACT_VM_DRAW" 1
	{ event AE_CL_PLAYSOUND 10 "Weapon_SMG_ZM.Draw" }
	snap
	fps 60
}

