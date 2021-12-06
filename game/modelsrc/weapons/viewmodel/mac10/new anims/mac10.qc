$modelname "weapons/c_mac10_new.mdl"
$cdmaterials "models/weapons/new_mac10"


$bodygroup "studio"
{
	studio "gun.smd"
}


$opaque

$attachment "muzzle" "d_gun" 0.00 -8.50 1.20 rotate -0 -90 0
$attachment "1" "d_gun" -0.80 -0.70 1.50 rotate 0 180 0

$include "../../shared.qci"


// Bone merge the arms.
$include "../../arm_bonemerge.qci"



/*
$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "mac_walk_r3152.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "idle.smd" {
	fps 60
}
*/
$sequence "idle01" {
	idle.smd
	//idle_delta
	//walk_ws
	activity "ACT_VM_IDLE" -1
	//blend "move_x" -1 1
	//blendwidth 3
	loop
}

$sequence "fire01" {
	"fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	node "Fire"
	snap
	fps 60
}

$sequence "reload" {
	reload.smd
	activity "ACT_VM_RELOAD" 1
	{ event AE_WPN_INCREMENTAMMO 68 "" }
	{ event AE_CL_PLAYSOUND 20 "Weapon_SMG_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 69 "Weapon_SMG_ZM.Reload2" }
	{ event AE_CL_PLAYSOUND 104 "Weapon_SMG_ZM.Reload3" }
	snap
	node "Ready"
	fps 60
}

$sequence "draw" {
	idle.smd
	activity "ACT_VM_DRAW" 1
	{ event AE_CL_PLAYSOUND 10 "Weapon_SMG_ZM.Draw" }
	snap
	node "0"
	fps 60
}


