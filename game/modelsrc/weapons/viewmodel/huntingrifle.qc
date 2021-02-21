// numbers after activities indicate weights
// -1 saves performance on single selections
// 2 + 2 + 1 = 2/5th of the time 2/5th of the time 1/5th of the time

$modelname "weapons/c_r700_zm.mdl"

$bodygroup "stoodio"
{
	studio "huntingrifle/gun_ref.smd"
}

$surfaceprop "default"

$cdmaterials "models\weapons\r700\"
// r700stock r700gun r700scope boolet3006.vmt


$attachment "muzzle" "d_gun" 0 -38.90 1.80 rotate 0 -90 0
$attachment "1" "d_gun" -20.00 -5.00 -3.50 rotate 90 0 0

// $origin 0 2 0

$include "shared.qci"

$include "arm_bonemerge.qci"

$include "huntingrifle/r700_sequences.qci"
