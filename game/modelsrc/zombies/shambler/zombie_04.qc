$modelname "zombie/zm_classic_04.mdl"

$model "fullbody" "male_04_reference.smd"


$texturegroup "skinfamilies"
{
	{ "militry_sheet"  }
	{ "kurtblu_sheet1" }
	{ "blckzip_sheet1" }
}

// Creates LODs
$include "zombie_lodmacro.qci"
$makelods "male_04_reference"


// Shared settings like hitboxes
$include "zombie_general.qci"


// Physmodel
$include "zombie_physmodel.qci"



// Animations are compiled to a separate file. See zombie_anims.qc
$includemodel "zombie/zm_classic_anims.mdl"
