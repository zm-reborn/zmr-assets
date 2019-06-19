$modelname "weapons/pistol3rd_zm.mdl"
$cdmaterials "models/weapons/new_pistol"

$bodygroup "studio"
{
	studio "pistol/reference.smd"
}

//$illumposition 0 0 0

$surfaceprop "weapon"

$contents "solid"

$attachment "muzzle" "ValveBiped.Weapon_bone" -1.53 10.823 3.526 rotate -173.978 4.645 88.323
$attachment "1" "ValveBiped.Weapon_bone" -1.53 6.573 4.128 rotate -173.978 4.645 88.323


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
