$modelname "weapons/c_shotgun_new.mdl"

$bodygroup "stoodio"
{
	studio "r870shotgun/gun_ref.smd"
}

$cdmaterials "models\weapons\new_shotgun2\"
// wood.vmt details.vmt gun.vmt

//$cdmaterials "models\weapons\haato\"

$cdmaterials "models\weapons\sporting\"
// sporting\shotshell.vmt

$attachment "muzzle" "d_gun" 33.00 -0.00 1.00 rotate 0 0 0
$attachment "1" "d_gun" 7.00 -0.50 0.70 rotate 0 -90 0


$include "shared.qci"

$include "arm_bonemerge.qci"


$include "r870shotgun/shotgun_sequences.qci"
