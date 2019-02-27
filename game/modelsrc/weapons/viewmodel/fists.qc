$modelname "weapons/c_fists_zm.mdl"
//$cdmaterials "models/weapons/fists"


$bodygroup "studio"
{
	studio "fists/c_fists_zm_reference.smd"
}


$opaque

$include "shared.qci"

// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "fists/fists_sequences.qci"



