$modelname "weapons/c_mac10_new.mdl"
$cdmaterials "models/weapons/new_mac10"


$bodygroup "studio"
{
	studio "mac10/c_mac_zm_reference.smd"
}


$opaque

$attachment "muzzle" "gun" 8.1 3.3 -0.4 rotate 0 0 0
$attachment "1" "gun" 0.7 3.9 0.94 rotate -90 180 0


$include "shared.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "mac10/mac10_sequences.qci"



