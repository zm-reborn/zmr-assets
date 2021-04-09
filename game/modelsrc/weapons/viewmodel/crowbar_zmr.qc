$modelname "weapons/c_crowbar_zmr.mdl"
$cdmaterials "models/weapons/crowbar_zmr"


$bodygroup "studio"
{
	studio "crowbar_zmr/crowbar_ref.smd"
}


$opaque


$include "shared.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "crowbar_zmr/crowbar_sequences.qci"
