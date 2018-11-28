$modelname "weapons/c_rifle_zm.mdl"
$cdmaterials "models/weapons/rifle_zm"


$bodygroup "studio"
{
	studio "rifle/c_rifle_zm_reference.smd"
}


$opaque

$attachment "muzzle" "ValveBiped.Weapon" 47.7 -3.27 -2.62 rotate 0 0 90
$attachment "1" "ValveBiped.Weapon" 10 -9.7 -12.5 rotate 60 0 -90


$include "shared.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "rifle/rifle_sequences.qci"


