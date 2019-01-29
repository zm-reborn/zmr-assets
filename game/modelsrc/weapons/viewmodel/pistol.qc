$modelname "weapons/c_pistol_new.mdl"
$cdmaterials "models/weapons/new_pistol"


$bodygroup "studio"
{
	studio "pistol/c_pistol_zm_reference.smd"
}


$opaque

$attachment "muzzle" "ValveBiped.muzzle" 0 0 0 rotate 0 0 0
$attachment "1" "ValveBiped.eject" -1 0 0 rotate 0 90 -180


$include "shared.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "pistol/pistol_sequences.qci"



