$modelname "weapons/c_revolver_zm.mdl"
$cdmaterials "models/weapons/v_revolver_zm"


$bodygroup "studio"
{
	studio "revolver/c_revolver_zm_reference.smd"
}


$opaque

$attachment "muzzle" "Bone01" 6.3 1.9 0 rotate 0 0 0
$attachment "1" "Rig_base" 0 0 0 rotate 0 0 0


$include "shared.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "revolver/revolver_sequences.qci"



