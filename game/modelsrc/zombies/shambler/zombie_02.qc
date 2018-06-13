$modelname "zombie/zm_classic_02.mdl"

$model "fullbody" "male_02_reference.smd"


$texturegroup "skinfamilies"
{
	{ "kurtblu_sheet"  }
	{ "offcgrn_sheet1" }
	{ "sweater_sheet1" }
}

// Creates LODs
$include "zombie_lodmacro.qci"
$makelods "male_02_reference"


// Shared settings like hitboxes
$include "zombie_general.qci"


// Physmodel
$include "zombie_physmodel.qci"



// Animations are compiled to a separate file. See zombie_anims.qc
$includemodel "zombie/zm_classic_anims.mdl"
