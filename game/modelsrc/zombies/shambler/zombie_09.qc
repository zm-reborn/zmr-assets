$modelname "zombie/zm_classic_09.mdl"

$model "fullbody" "male_09_reference.smd"


$texturegroup "skinfamilies"
{
	{ "kurtgrn_sheet"  }
	{ "militry_sheet1" }
	{ "offcgrn_sheet1" }
}

// Creates LODs
$include "zombie_lodmacro.qci"
$makelods "male_09_reference"


// Shared settings like hitboxes
$include "zombie_general.qci"


// Physmodel
$include "zombie_physmodel.qci"



// Animations are compiled to a separate file. See zombie_anims.qc
$includemodel "zombie/zm_classic_anims.mdl"
