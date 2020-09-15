$modelname "weapons/c_improvised_zm.mdl"
$cdmaterials "models/weapons/crowbar_zmr"


$bodygroup "studio"
{
	studio "crowbar/cbar_zmr.smd"
}


$opaque


$include "shared.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "crowbar/crowbar_sequences.qci"
