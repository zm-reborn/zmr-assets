$modelname "weapons/c_arms_citizen.mdl"
$cdmaterials "models/weapons/c_arms_citizen"


$body arms "arms_new/c_arms_citizen.smd"
$bodygroup hands {
	studio "arms_new/c_arms_citizen_hands.smd"
}

$proceduralbones "arms_new/c_arms_vrd.vrd"
$sequence idle "arms_new/c_arms_citizen.smd" fps 30


$opaque
$ambientboost

$include "shared.qci"


$texturegroup "skinfamilies"
{
	{ "c_arms_citizen_sleeves" "c_arms_citizen_hands" }
	{ "c_arms_citizen_sleeves" "c_arms_citizen_hands_black" }
}

$include "arms_new/definebones.qci"
