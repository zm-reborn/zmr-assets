$modelname "weapons/c_crowbar_zmr.mdl"
//$cdmaterials "models/weapons/crowbar_zmr"
$cdmaterials "models/weapons/alumbat"


$bodygroup "studio"
{
	studio "crowbar_zmr/aluminumbat_swap_ref.smd"
}


$opaque


$include "shared.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "crowbar_zmr/crowbar_sequences.qci"
