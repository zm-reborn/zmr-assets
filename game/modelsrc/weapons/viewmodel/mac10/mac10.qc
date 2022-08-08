$modelname "weapons/c_mac10_new.mdl"
$cdmaterials "models/weapons/new_mac10"


$bodygroup "studio"
{
	studio "gun.smd"
}


$opaque

$attachment "muzzle" "d_gun" 0.00 -8.50 1.20 rotate -0 -90 0
$attachment "1" "d_gun" -0.80 -0.70 1.50 rotate 0 180 0

$include "../shared.qci"


// Bone merge the arms.
$include "../arm_bonemerge.qci"

///////////////////////////////////////////////////////
// pose params
///////////////////////////////////////////////////////

$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "idle_walk.smd" {
	fps 74.3
	loop
}
$animation "walk_ws_e" "idle_walk_empty.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "idle.smd" {
	fps 20
}
$animation "idleempty_delta" "idle_empty.smd" {
	fps 20
}


/////////////////////////////////////////////////////
/////////////////////////////////////////////////////

$sequence "deploy" {
	deploy.smd
	activity "ACT_VM_DRAW" -1
	{ event AE_CL_PLAYSOUND 10 "Weapon_SMG_ZM.Draw" }
	snap
	node "0"
	fps 60
}

$sequence "deployempty" {
	deploy_empty.smd
	activity "ACT_VM_DRAW_EMPTY" -1
	{ event AE_CL_PLAYSOUND 10 "Weapon_SMG_ZM.Draw" }
	snap
	node "0"
	fps 60
}

///////////////////////////////////////////////////////
// idle
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


$sequence "idleempty" {
	"idle_empty.smd"
	idleempty_delta
	walk_ws_e
	activity "ACT_VM_IDLE_EMPTY" -1
	blend "move_x" -1 1
	blendwidth 3
	loop
}

/////////////////////////////////////////////////////
// shooting
/////////////////////////////////////////////////////

$sequence "fire1" {
	"fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	node "Fire"
	snap
	fps 60
}
$sequence "fire2" {
	"fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	node "Fire"
	snap
	fps 60
}
$sequence "fire3" {
	"fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	node "Fire"
	snap
	fps 60
}

$sequence "fire_last" {
	"fire_last.smd"
	activity "ACT_VM_PRIMARYATTACK_EMPTY" -1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	node "Fire"
	snap
	fps 60
}

/////////////////////////////////////////////////////
/////////////////////////////////////////////////////

$sequence "reload" {
	reload.smd
	activity "ACT_VM_RELOAD" -1
	{ event AE_WPN_INCREMENTAMMO 105 "" }
	{ event AE_CL_PLAYSOUND 25 "Weapon_SMG_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 98 "Weapon_SMG_ZM.Reload2" }
	snap
	node "Ready"
	fps 60
}

$sequence "reload_empty" {
	reload_empty.smd
	activity "ACT_VM_RELOAD_EMPTY" -1
	{ event AE_WPN_INCREMENTAMMO 100 "" }
	{ event AE_CL_PLAYSOUND 25 "Weapon_SMG_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 75 "Weapon_SMG_ZM.Reload2" }
	{ event AE_CL_PLAYSOUND 127 "Weapon_SMG_ZM.Reload3" }
	snap
	node "Ready"
	fps 60
}
