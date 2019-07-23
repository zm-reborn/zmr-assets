$modelname "weapons/c_arms_female_bare.mdl"
$cdmaterials "models/weapons/c_arms_citizen"


$bodygroup "studio"
{
	studio "arms_new_female_bare/bare.smd"
}


$proceduralbones "arms_new/c_arms_vrd.vrd"
$sequence idle "arms_new/c_arms_citizen.smd" fps 30


$opaque
$ambientboost

$include "shared.qci"


$texturegroup "skinfamilies"
{
	{ "tr_natary01_hand"       "female_01_sleeve" }
	{ "tr_natary01_hand"       "female_02_sleeve" }
	{ "tr_natary01_hand_black" "female_03_sleeve" }
	{ "tr_natary01_hand"       "female_04_sleeve" }
	{ "tr_natary01_hand"       "female_06_sleeve" }
	{ "tr_natary01_hand_black" "female_07_sleeve" }
}

$include "arms_new/definebones.qci"
