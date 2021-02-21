$modelname "weapons/c_sporting.mdl"
$cdmaterials "models/weapons/sporting/"


$bodygroup "studio"
{
	studio "sporting/90_weighted.smd"
}


$attachment "muzzle" "dum_gunbody" 43 0 1.5 rotate 0 0 0
$attachment "1" "dum_gunbody" -20 0 10 rotate 70 0 0

$include "shared.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "sporting/sporting_sequences.qci"
