$modelname "weapons/w_sporting.mdl"
$cdmaterials "models/weapons/sporting"

$bodygroup "studio"
{
	studio "sporting/reference.smd"
}

//$illumposition 0 0 0

$surfaceprop "weapon"

$contents "solid"

// This needs to be defined so the collision model can use it.
// The attachments must be relative to a bone that actually exists(?)
$definebone "wmodel" "" 0 0 0 0 0 0 0 0 0 0 0 0

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 32 -1.1 -9.6 rotate 15 0 -90
$attachment "1" "ValveBiped.Bip01_R_Hand" 6 -1 -4.5 rotate 50 110 -80


$sequence "idle1" {
	"sporting/idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fire" {
	"sporting/idle.smd"
	activity "ACT_RANGE_ATTACK_SHOTGUN" 1
	{ event AE_NPC_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event 6001 0 "2" }
	{ event 3004 0 "" }
	fadein 0.2
	fadeout 0.2
	fps 5
}

$collisionmodel "sporting/collision.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
