$modelname "zombie/zm_classic_08.mdl"

$model "fullbody" "male_08/male_08_reference.smd"


$texturegroup "skinfamilies"
{
	{ "flanblu_sheet"  }
	{ "jackets_sheet1" }
	{ "blckzip_sheet1" }
}

// Creates LODs
$include "zombie_lodmacro.qci"
$makelods "male_08"


// Shared settings like hitboxes
$include "zombie_general.qci"


// Physmodel
$include "zombie_physmodel.qci"



// Animations are compiled to a separate file. See zombie_anims.qc
$includemodel "zombie/zm_classic_anims.mdl"
