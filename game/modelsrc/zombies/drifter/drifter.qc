$modelname "humans/zm_draggy.mdl"

$model "fullbody" "charple04_reference.smd"


$texturegroup "skinfamilies"
{
	{ "Charple4_sheet"  }
	{ "Charple4_sheet2" }
	{ "Charple4_sheet3" }
	{ "Charple4_sheet4" }
}


// Creates LODs
$include "drifter_lodmacro.qci"
$makelods "charple04_reference"


// Shared settings like hitboxes
$include "drifter_general.qci"


// Physmodel
$include "drifter_physmodel.qci"



// Animations are compiled to a separate file. See drifter_anims.qc
//$includemodel "zombie/drifter_anims.mdl"
$include "drifter_sequences.qci"
