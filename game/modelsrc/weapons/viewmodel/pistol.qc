$modelname "weapons/c_pistol_new.mdl"
$cdmaterials "models/weapons/new_pistol"
$cdmaterials "models/weapons/glock17"

$bodygroup "studio"
{
	studio "pistol/gun.smd"
}


$opaque

$attachment "muzzle" "d_gun" 0.00 -6.00 2.70 rotate -0 -90 0
$attachment "1" "d_gun" -0.50 0.40 3.00 rotate -0 -180 0

$include "shared.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "pistol/pistol_sequences.qci"



