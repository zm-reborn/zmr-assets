$modelname "weapons/c_glock17.mdl"
$cdmaterials "models/weapons/glock17"
// glock.vmt


$bodygroup "stoodio"
{
	studio "gun.smd"
}

$opaque

$attachment "muzzle" "d_gun" 0 -6.188 2.294 rotate 0 -90 0
$attachment "1" "d_gun" -0.295 -1.537 2.394 rotate 0 180 0

$include "../shared.qci"

$include "../arm_bonemerge.qci"


///////////////////////////////////////////////////////
// pose params
///////////////////////////////////////////////////////

$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "anims/g15_walk.smd" {
	fps 74.3
	loop
}
$animation "walk_ws_e" "anims/g15_walk_empty.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "anims/g15_idle.smd" {
	fps 60
}
$animation "idleempty_delta" "anims/g15_idle_empty.smd" {
	fps 60
}

///////////////////////////////////////////////////////
// end.of pose params
///////////////////////////////////////////////////////


$sequence "idle" {
	"anims\g15_idle.smd"
	idle_delta
	walk_ws
	activity "ACT_VM_IDLE" -1
	blend "move_x" -1 1
	blendwidth 3
	loop
}


$sequence "idleempty" {
	"anims\g15_idle_empty.smd"
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

$sequence "fire" {
	"anims\g15_fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "pistol muzzle" }
	{ event 6001 2 0 }
	node "1"
	fadein 0
	fadeout 0.1
	snap
	fps 50
}

$sequence "fire1" {
	"anims\g15_fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 2 "pistol muzzle" }
	{ event 6001 2 0 } // Eject brass, 0 = normal shell, 1 = rifle shell, 2 = shotgun shell
	node "2"
	fadein 0
	fadeout 0.1
	fps 50
}

$sequence "fire2" {
	"anims\g15_fire3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 1 "pistol muzzle" }
	{ event 6001 2 0 } // Eject brass, 0 = normal shell, 1 = rifle shell, 2 = shotgun shell
	node "2"
	fadein 0
	fadeout 0.1
	fps 50
}

$sequence "fire3" {
	"anims\g15_fire4.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 2 "pistol muzzle" }
	{ event 6001 2 0 } // Eject brass, 0 = normal shell, 1 = rifle shell, 2 = shotgun shell
	node "2"
	fadein 0
	fadeout 0.1
	fps 50
}

$sequence "firelast" {
	"anims\g15_firelast.smd"
	activity "ACT_VM_PRIMARYATTACK_EMPTY" -1
	{ event AE_MUZZLEFLASH 0 "pistol muzzle" }
	{ event 6001 2 0 } // Eject brass, 0 = normal shell, 1 = rifle shell, 2 = shotgun shell
	snap
	node "2"
	fps 50
}

/////////////////////////////////////////////////////
/////////////////////////////////////////////////////

/*
// unneeded since slide locks, no point in having a flinch or anything
$sequence "fireempty" {
	"anims\g15_idle_empty.smd"
	activity "ACT_VM_DRYFIRE" -1
	snap
	node "2"
	fps 60
}
*/

$sequence "draw" {
	"anims\g15_draw.smd"
	activity "ACT_VM_DRAW" -1
	snap
	node "0"
	fps 60
}

$sequence "drawempty" {
	"anims\g15_draw_empty.smd"
	activity "ACT_VM_DRAW_EMPTY" -1
	snap
	node "0"
	fps 60
}


// g15_reload_22.max
$sequence "reload" {
	"anims\g15_reload.smd"
	activity "ACT_VM_RELOAD" -1
	{ event AE_CL_PLAYSOUND 21 "Weapon_Glock_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 95 "Weapon_Glock_ZM.Reload2" }
	{ event AE_WPN_INCREMENTAMMO 108 "" }
	fadein 0.2
	fadeout 0.1
	node "0"
	fps 60
}

// g15_reload_empty22.max
$sequence "reload_empty" {
	"anims\g15_reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" -1
	{ event AE_CL_PLAYSOUND 19 "Weapon_Glock_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 89 "Weapon_Glock_ZM.Reload2" }
	{ event AE_CL_PLAYSOUND 125 "Weapon_Glock_ZM.Reload3" }
	{ event AE_WPN_INCREMENTAMMO 100 "" }
	fadein 0.2
	fadeout 0.1
	node "0"
	fps 60
}






