
$modelname "weapons/c_pistol_new.mdl"

$body studio "ref_pistol.smd"

$cdmaterials "models/weapons/new_pistol"
$cdmaterials "models/weapons/glock17" // reused boolet

//$cdmaterials "models/weapons/maglight"

$opaque

$attachment "muzzle" "d_gun" 0.00 -6.00 2.70 rotate -0 -90 0
$attachment "1" "d_gun" -0.50 0.40 3.00 rotate -0 -180 0


// Bone merge the arms.
$include "../_bonemerger.qci"



$poseparameter "move_x" -1 1 loop 0

$animation "walk_ws" "right/s_walk.smd" {
	fps 74.3
	loop
}
$animation "walk_ws_e" "right/s_walkempty.smd" {
	fps 74.3
	loop
}

$animation "idle_delta" "right/s_idle.smd"	fps 30;
$animation "idleempty_delta" "right/s_idleempty.smd" fps 30;


$sequence "idle" {
	"right\s_idle.smd"
	idle_delta
	walk_ws
	activity "ACT_VM_IDLE" -1
	blend "move_x" -1 1
	blendwidth 3
	loop
}

$sequence "idle_empty" {
	"right\s_idleempty.smd"
	idleempty_delta
	walk_ws_e
	activity "ACT_VM_IDLE_EMPTY" 1
	blend "move_x" -1 1
	blendwidth 3
	loop
}

$sequence "fire1" {
	"right\s_fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL muzzle" }
	{ event 6001 2 0 } // Eject brass, 0 = normal shell, 1 = rifle shell, 2 = shotgun shell
	node "1"
	snap
	fps 60
}

$sequence "fire2" {
	"right\s_fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL muzzle" }
	{ event 6001 2 0 }
	node "2"
	snap
	fps 60
}

$sequence "fire3" {
	"right\s_fire3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL muzzle" }
	{ event 6001 2 0 }
	node "2"
	snap
	fps 60
}
$sequence "firelast" {
	"right\s_firelast.smd"
	activity "ACT_VM_PRIMARYATTACK_EMPTY" -1
	{ event AE_MUZZLEFLASH 0 "PISTOL muzzle" }
	{ event 6001 2 0 }
	node "2"
	snap
	fps 60
}


$sequence "deploy" {
	"right\s_deploy.smd"
	activity "ACT_VM_DRAW" 9
	fadein 0
	fadeout 0.2
	node "0"
	fps 60
}
$sequence "deploy_presscheck" {
	"right\s_deploy_presscheck.smd"
	activity "ACT_VM_DRAW" 1
	{ event AE_CL_PLAYSOUND 17 "Weapon_Pistol_ZM.Draw" }
	fadein 0.1
	fadeout 0.1
	node "0"
	fps 90
}

$sequence "deploy_empty" {
	"right\s_deployempty.smd"
	activity "ACT_VM_DRAW_EMPTY" 9
	fadein 0.1
	fadeout 0.1
	node "0"
	fps 60
}
$sequence "deploy_empty_spin" {
	"right\s_deployempty_spin.smd"
	activity "ACT_VM_DRAW_EMPTY" 1
	fadein 0.1
	fadeout 0.1
	node "0"
	fps 60
}

$sequence "reload_smooth" {
	"right\s_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event AE_CL_PLAYSOUND 25 "Weapon_Pistol_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 95 "Weapon_Pistol_ZM.Reload2" }
	{ event AE_WPN_INCREMENTAMMO 104 "" }
	fadein 0.1
	fadeout 0
	node "0"
	fps 60
}
$sequence "reload_bumped" {
	"right\s_reload2.smd"
	activity "ACT_VM_RELOAD" 2
	{ event AE_CL_PLAYSOUND 25 "Weapon_Pistol_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 95 "Weapon_Pistol_ZM.Reload2" }
	{ event AE_WPN_INCREMENTAMMO 104 "" }
	fadein 0.1
	fadeout 0
	node "0"
	fps 60
}

$sequence "reload_empty" {
	"right\s_reloadempty.smd"
	activity "ACT_VM_RELOAD_EMPTY" -1
	{ event AE_CL_PLAYSOUND 18 "Weapon_Pistol_ZM.Reload1" }
	{ event AE_CL_PLAYSOUND 48 "Weapon_Pistol_ZM.Reload2" }
	{ event AE_CL_PLAYSOUND 93 "Weapon_Pistol_ZM.Reload3" }
	{ event AE_WPN_INCREMENTAMMO 106 "" }
	fadein 0.1
	fadeout 0
	node "0"
	fps 60
}
