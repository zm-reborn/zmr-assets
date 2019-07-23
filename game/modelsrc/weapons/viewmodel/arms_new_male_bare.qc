$modelname "weapons/c_arms_male_bare.mdl"
$cdmaterials "models/weapons/c_arms_citizen"


$bodygroup "studio"
{
	studio "arms_new_male_bare/bare.smd"
}


$proceduralbones "arms_new/c_arms_vrd.vrd"
$sequence idle "arms_new/c_arms_citizen.smd" fps 30


$opaque
$ambientboost

$include "shared.qci"


$texturegroup "skinfamilies"
{
	{ "male_01_sleeve" "c_arms_citizen_hands_black" }
	{ "male_02_sleeve" "c_arms_citizen_hands"       }
	{ "male_03_sleeve" "c_arms_citizen_hands_black" }
	{ "male_04_sleeve" "c_arms_citizen_hands"       }
	{ "male_05_sleeve" "c_arms_citizen_hands"       }
	{ "male_06_sleeve" "c_arms_citizen_hands"       }
	{ "male_07_sleeve" "c_arms_citizen_hands"       }
	{ "male_08_sleeve" "c_arms_citizen_hands"       }
	{ "male_09_sleeve" "c_arms_citizen_hands"       }
	{ "pi_sleeve"      "c_arms_citizen_hands"       }
	{ "lawyer_sleeve"  "c_arms_citizen_hands"       }
}

$include "arms_new/definebones.qci"
