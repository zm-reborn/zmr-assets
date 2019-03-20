$modelname "zombie/zm_classic_07.mdl"

$model "fullbody" "male_07/male_07_reference.smd"


$texturegroup "skinfamilies"
{
	{ "offcgrn_sheet"  }
	{ "blckunz_sheet1" }
	{ "militry_sheet1" }
}

// Creates LODs
$include "zombie_lodmacro.qci"
$makelods "male_07"


// Shared settings like hitboxes
$include "zombie_general.qci"


// Physmodel
$include "zombie_physmodel.qci"



// Animations are compiled to a separate file. See zombie_anims.qc
$includemodel "zombie/zm_classic_anims.mdl"
