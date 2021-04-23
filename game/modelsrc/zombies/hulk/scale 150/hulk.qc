$modelname "zombie/hulk.mdl"
$model "fullbody" "Zombie_poison_reference.smd"


$texturegroup "skinfamilies"
{
	{ "PoisonZombie_sheet"  }
	{ "PoisonZombie_sheet2" }
	{ "PoisonZombie_sheet3" }
	{ "PoisonZombie_sheet4" }
}


// Creates LODs
$include "hulk_lodmacro.qci"
$makelods Zombie_poison_reference


// Physmodel
$include "hulk_physmodel.qci"


// IMPORTANT!!!
// Everything is scaled by 1.5
// So if you do some tricks like re-doing the hitboxes in HLMV, you'll have to do some Excel math. Speaking from experience.
$scale 1.5

// Shared settings like hitboxes
$include "hulk_general.qci"


// Animations are compiled to a separate file. See hulk_anims.qc
//$includemodel "zombie/hulk_anims.mdl"
$include "hulk_sequences.qci"
