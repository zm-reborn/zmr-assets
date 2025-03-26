
$modelname	"weapons/c_ar9mm.mdl"
$body studio "ref_ar9mm.smd"
$cdmaterials "models/weapons/ar9mm"
// ar9.vmt
$cdmaterials "models/weapons/glock17"
// glock.vmt (9mm boolet)

$opaque

$attachment "muzzle" "d_gun" 0.00 -24.50 2.20 rotate -0 -90 0
$attachment "1" "d_dustcover" 0.00 0.00 -0.50 rotate 0 0 0




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


/////////////////////////////////////////////////////
/////////////////////////////////////////////////////

$sequence "deploy" {
	right/s_deploy.smd
	activity "ACT_VM_DRAW" 1
	{ event AE_CL_PLAYSOUND 15 "Weapon_Ar9mm_ZM.SafetyToggle" }
	snap
	node "0"
	fps 60
}

$sequence "deployalt" {
	right/s_deploy_mw2.smd
	activity "ACT_VM_DRAW" 1
	{ event AE_CL_PLAYSOUND 10 "Weapon_Ar9mm_ZM.Draw2" }
	snap
	node "0"
	fps 60
}

$sequence "deployempty" {
	right/s_deploy_empty.smd
	activity "ACT_VM_DRAW_EMPTY" -1
	{ event AE_CL_PLAYSOUND 10 "Weapon_Ar9mm_ZM.Draw2" }
	snap
	node "0"
	fps 60
}

///////////////////////////////////////////////////////
// idle
///////////////////////////////////////////////////////


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
	right/s_fire1.smd
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	node "Fire"
	snap
	fps 60
}
$sequence "fire2" {
	right/s_fire2.smd
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	node "Fire"
	snap
	fps 60
}
$sequence "fire3" {
	right/s_fire3.smd
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	node "Fire"
	snap
	fps 60
}

$sequence "fire_burst" {
	right/s_fire2.smd
	activity "ACT_VM_SECONDARYATTACK" -1
	{ event AE_MUZZLEFLASH 0 "SMG1 muzzle" }
	{ event AE_MUZZLEFLASH 3 "SMG1 muzzle" }
	{ event AE_MUZZLEFLASH 6 "SMG1 muzzle" }
	{ event 6001 0 "0" }
	snap
	fps 60
}

$sequence "fire_last" {
	right/s_fire_last.smd
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
	right/s_reload.smd
	activity "ACT_VM_RELOAD" -1
	{ event AE_CL_PLAYSOUND 11 "Weapon_Ar9mm_ZM.SafetyToggle" }
	{ event AE_CL_PLAYSOUND 40 "Weapon_Ar9mm_ZM.Reload1_1" }
	{ event AE_CL_PLAYSOUND 122 "Weapon_Ar9mm_ZM.Reload1_2" }
	{ event AE_WPN_INCREMENTAMMO 125 "" }
	{ event AE_CL_PLAYSOUND 146 "Weapon_Ar9mm_ZM.SafetyToggle" }
	snap
	node "Ready"
	fps 60
}

$sequence "reload_empty" {
	right/s_reload_empty.smd
	activity "ACT_VM_RELOAD_EMPTY" -1
	{ event AE_WPN_INCREMENTAMMO 105 "" }
	{ event AE_CL_PLAYSOUND 25 "Weapon_Ar9mm_ZM.Reload2_1" }
	{ event AE_CL_PLAYSOUND 80 "Weapon_Ar9mm_ZM.Reload2_2" }
	{ event AE_CL_PLAYSOUND 145 "Weapon_Ar9mm_ZM.Reload2_3" }
	snap
	node "Ready"
	fps 60
}





