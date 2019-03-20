$modelname "zombie/zm_classic_06.mdl"

$model "fullbody" "male_06/male_06_reference.smd"


$texturegroup "skinfamilies"
{
	{ "offctan_sheet"  }
	{ "flanorn_sheet1" }
	{ "flanblu_sheet1" }
}

// Creates LODs
$include "zombie_lodmacro.qci"
$makelods "male_06"


// Shared settings like hitboxes
$include "zombie_general.qci"


// Physmodel
$include "zombie_physmodel.qci"



// Animations are compiled to a separate file. See zombie_anims.qc
$includemodel "zombie/zm_classic_anims.mdl"
