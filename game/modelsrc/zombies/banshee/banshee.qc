$modelname "zombie/zm_fast.mdl"

$model "fullbody" "corpse1_reference.smd"


$texturegroup "skinfamilies"
{
	{ "corpse1" }
	{ "corpse2" }
	{ "corpse3" }
	{ "corpse4" }
}

// Creates LODs
$include "banshee_lodmacro.qci"
$makelods "corpse1_reference"


// Shared settings like hitboxes
$include "banshee_general.qci"


// Physmodel
$include "banshee_physmodel.qci"


// Animations are compiled to a separate file. See banshee_anims.qc
$includemodel "zombie/zm_fast_anims.mdl"
