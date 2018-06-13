$modelname "zombie/zm_classic_03.mdl"

$model "fullbody" "male_03_reference.smd"


$texturegroup "skinfamilies"
{
	{ "jackets_sheet"  }
	{ "offcwht_sheet1" }
	{ "bluezip_sheet1" }
}

// Creates LODs
$include "zombie_lodmacro.qci"
$makelods "male_03_reference"


// Shared settings like hitboxes
$include "zombie_general.qci"


// Physmodel
$include "zombie_physmodel.qci"



// Animations are compiled to a separate file. See zombie_anims.qc
$includemodel "zombie/zm_classic_anims.mdl"
