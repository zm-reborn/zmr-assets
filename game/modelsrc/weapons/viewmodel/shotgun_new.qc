$modelname "weapons/c_shotgun_new.mdl"
$cdmaterials "models/weapons/new_shotgun"


$bodygroup "studio"
{
	studio "shotgun_new/c_shotgun_zm_reference.smd"
}


$opaque

$attachment "muzzle" "ValveBiped.Muzzle" 0 0 0 rotate -70 -165 0
$attachment "1" "ValveBiped.Eject" 0 0 0 rotate 50 -130 -130


$include "shared.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "shotgun_new/shotgun_new_sequences.qci"



