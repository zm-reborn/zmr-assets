$modelname "weapons/c_pipebomb.mdl"

$bodygroup "stoodio"
{
	studio "ref_pipebomb.smd"
}

$cdmaterials "models\weapons\pipe_zmr\"


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
	fps 60
}

$animation "walk_ws_cook" "left/s_cook_walk.smd" {
	fps 74.3
	loop
}

$animation "cook_delta" "left/s_cook.smd" {
	fps 20
}

///////////////////////////////////////////////////////
// end.of pose params
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
/*
$sequence "idle_cook" {
	left/s_cook.smd
	cook_delta
	walk_ws_cook
	activity "ACT_VM_IDLE" 1
	blend "move_x" -1 1
	blendwidth 3
	loop
}
*/
$sequence "deploy" {
	"left/s_deploy.smd"
	activity "ACT_VM_DRAW" -1
	{ event AE_CL_PLAYSOUND 29 "Weapon_Pipebomb_ZM.PowerOn" }
	snap
	fps 60
}


$sequence "dial" {
	"left/s_dial.smd"
	activity "ACT_VM_PRIMARYATTACK_1" -1
	{ event AE_CL_PLAYSOUND 9 "Weapon_Pipebomb_ZM.Dial2" }
	{ event AE_CL_PLAYSOUND 30 "Weapon_Pipebomb_ZM.Dial0" }
	{ event AE_CL_PLAYSOUND 42 "Weapon_Pipebomb_ZM.Dial0" }
	{ event AE_CL_PLAYSOUND 59 "Weapon_Pipebomb_ZM.Dial7" }
	{ event AE_CL_PLAYSOUND 79 "Weapon_Pipebomb_ZM.Call" }
	{ event 3900 60 "" }
	fadein 0.1
	fadeout 0.1
	fps 60
}


$sequence "cook" {
	left/s_cook.smd
	cook_delta
	walk_ws_cook
	activity "ACT_VM_PRIMARYATTACK_4" -1
	blend "move_x" -1 1
	blendwidth 3
	loop
	fadein 0.1
	fadeout 0.1
	fps 60
	{ event 3900 30 "" }
}


$sequence "throw" {
	"left/s_throw.smd"
	activity "ACT_VM_THROW" -1
	{ event 3005 20 "" }
	snap
	fps 60
}

