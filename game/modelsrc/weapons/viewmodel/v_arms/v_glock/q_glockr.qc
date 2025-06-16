$modelname "weapons/c_glock17.mdl"
$cdmaterials "models/weapons/glock17"
// glock.vmt


$bodygroup "stoodio"
{
	studio "ref_glock.smd"
}

$opaque

$attachment "muzzle" "d_gun" 0 -6.188 2.294 rotate 0 -90 0
$attachment "1" "d_gun" -0.295 -1.537 2.394 rotate 0 180 0

$include "../_bonemerger.qci"

///////////////////////////////////////////////////////
// pose params
///////////////////////////////////////////////////////

$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "right/s_walk.smd" {
	fps 74.3
	loop
}
$animation "walk_ws_e" "right/s_walk_empty.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "right/s_idle.smd" {
	fps 20
}
$animation "idleempty_delta" "right/s_idle_empty.smd" {
	fps 20
}
///////////////////////////////////////////////////////
// end.of pose params
///////////////////////////////////////////////////////


$sequence "deploy" {
	right/s_deploy.smd
	activity "ACT_VM_DRAW" -1
	snap
	fps 60
}

$sequence "deployempty" {
	right/s_deploy_empty.smd
	activity "ACT_VM_DRAW_EMPTY" -1
	snap
	fps 60
}

/////////////////////////////////////////////////////
/////////////////////////////////////////////////////

$sequence "idle" {
	right/s_idle.smd
	idle_delta
	walk_ws
	activity "ACT_VM_IDLE" -1
	blend "move_x" -1 1
	blendwidth 3
	loop
}


$sequence "idleempty" {
	right/s_idle_empty.smd
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
	"right\s_fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "pistol muzzle" }
	{ event 6001 2 0 }
	snap
	fps 50
}

$sequence "fire2" {
	"right\s_fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 2 "pistol muzzle" }
	{ event 6001 2 0 } // Eject brass, 0 = normal shell, 1 = rifle shell, 2 = shotgun shell
	snap
	fps 60
}

$sequence "fire3" {
	"right\s_fire3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 1 "pistol muzzle" }
	{ event 6001 2 0 } // Eject brass, 0 = normal shell, 1 = rifle shell, 2 = shotgun shell
	snap
	fps 60
}


$sequence "firelast" {
	"right\s_fire_last.smd"
	activity "ACT_VM_PRIMARYATTACK_EMPTY" -1
	{ event AE_MUZZLEFLASH 0 "pistol muzzle" }
	{ event 6001 2 0 } // Eject brass, 0 = normal shell, 1 = rifle shell, 2 = shotgun shell
	snap
	fps 60
}

/////////////////////////////////////////////////////
/////////////////////////////////////////////////////


$sequence "reload" {
	right/s_reload.smd
	activity "ACT_VM_RELOAD" -1
	{ event AE_CL_PLAYSOUND 21 "Weapon_Glock_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 100 "Weapon_Glock_ZM.Reload2" }
	{ event AE_WPN_INCREMENTAMMO 108 "" }
	fadein 0.1
	fadeout 0.1
	fps 60
}

$sequence "reload_empty" {
	right/s_reload_empty.smd
	activity "ACT_VM_RELOAD_EMPTY" -1
	{ event AE_CL_PLAYSOUND 18 "Weapon_Glock_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 60 "Weapon_Glock_ZM.Reload2" }
	{ event AE_CL_PLAYSOUND 91 "Weapon_Glock_ZM.Reload3" }
	{ event AE_WPN_INCREMENTAMMO 94 "" }
	fadein 0.1
	fadeout 0.1
	fps 60
}






