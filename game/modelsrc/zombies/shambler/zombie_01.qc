$modelname "zombie/zm_classic_01.mdl"

$model "fullbody" "male_01/male_01_reference.smd"


$texturegroup "skinfamilies"
{
	{ "blckunz_sheet"  }
	{ "offctan_sheet1" }
	{ "oldchst_sheet1" }
}

// Creates LODs
$include "zombie_lodmacro.qci"
$makelods "male_01"


// Shared settings like hitboxes
$include "zombie_general.qci"


// Physmodel
$include "zombie_physmodel.qci"



// Animations are compiled to a separate file. See zombie_anims.qc
$includemodel "zombie/zm_classic_anims.mdl"
