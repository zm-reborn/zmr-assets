$modelname "weapons/c_molotov_zm.mdl"
$cdmaterials "models/weapons/molotov_zm"


$bodygroup "studio"
{
	studio "molotov/molotov_all.smd"
}

$bodygroup "flame"
{
	blank
	studio "molotov/molotov_flame.smd"
}

$texturegroup "skinfamilies"
{
	{ "fire" }
	{ "fireoff" }
}

$opaque

$attachment "lighterflame" "ValveBiped.LighterFlame" 0.9 0 0 rotate 0 0 0
$attachment "clothflame" "cloth5" -0.2 0.1 0 rotate 0 0 0


$include "shared.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

// Sequences
$include "molotov/molotov_sequences.qci"

