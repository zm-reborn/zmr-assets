
$modelname "weapons/c_rifle_zm.mdl"

$bodygroup "stoodio"
{
	studio "levergun/gun_ref.smd"
}

$cdmaterials "models\weapons\rifle_zmr\"
// 3151gun.vmt, 3151notgun.vmt, boolet315.vmt, sights315.vmt

$attachment "muzzle" "d_gun" 0 -29.3 1.80 rotate 0 -90 0
$attachment "1" "d_gun" -10 1.5 -1 rotate 0 180 0
$attachment "ironsight" "Dummy001" 8.537 -4.927 -2.181 rotate 0 0 0


$include "shared.qci"

$include "arm_bonemerge.qci"

$include "levergun/rifle_sequences.qci"
