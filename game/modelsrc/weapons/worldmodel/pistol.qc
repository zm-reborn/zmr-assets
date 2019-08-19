$modelname "weapons/w_pistol_zm.mdl"
$cdmaterials "models/weapons/new_pistol"

$bodygroup "studio"
{
	studio "pistol/reference.smd"
}

//$illumposition 0 0 0

$surfaceprop "weapon"

$contents "solid"

// This needs to be defined so the collision model can use it.
// The attachments must be relative to a bone that actually exists(?)
$definebone "ValveBiped.Weapon_bone" "" 0 0 0 0 0 0 0 0 0 0 0 0

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 11 -2.4 -4.3 rotate 5 0 0
$attachment "1" "ValveBiped.Bip01_R_Hand" 6 -2 -4.5 rotate 20 90 0


$sequence "idle" {
	"pistol/idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"pistol/idle.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	{ event 3014 1 "" }
	{ event AE_NPC_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "pistol/collision.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
