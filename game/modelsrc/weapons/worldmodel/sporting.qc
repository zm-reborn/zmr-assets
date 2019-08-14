$modelname "weapons/w_sporting.mdl"
$cdmaterials "models/weapons/sporting"

$bodygroup "studio"
{
	studio "sporting/reference.smd"
}

//$illumposition 0 0 0

$surfaceprop "weapon"

$contents "solid"

$attachment "muzzle" "wmodel" -26 0 0.4 rotate -0 180 0
$attachment "1" "wmodel" 0 1 1 rotate -30 40 0


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
