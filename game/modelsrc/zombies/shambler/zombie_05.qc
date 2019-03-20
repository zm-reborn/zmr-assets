$modelname "zombie/zm_classic_05.mdl"

$model "fullbody" "male_05/male_05_reference.smd"


$texturegroup "skinfamilies"
{
	{ "sweater_sheet"  }
	{ "bluezip_sheet1" }
	{ "kurtgrn_sheet1" }
}

// Creates LODs
$include "zombie_lodmacro.qci"
$makelods "male_05"


// Shared settings like hitboxes
$include "zombie_general.qci"


// Physmodel
$include "zombie_physmodel.qci"



// Animations are compiled to a separate file. See zombie_anims.qc
$includemodel "zombie/zm_classic_anims.mdl"
