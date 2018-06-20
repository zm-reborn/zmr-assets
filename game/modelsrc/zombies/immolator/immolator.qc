$modelname "zombie/burnzie.mdl"

$model "fullbody" "burnzie_bz_reference.smd"


// Creates LODs
$include "immolator_lodmacro.qci"
$makelods "burnzie_bz_reference"


// Shared settings like hitboxes
$include "immolator_general.qci"


// Physmodel
$include "immolator_physmodel.qci"



// Animations are compiled to a separate file. See immolator_anims.qc
//$includemodel "zombie/burnzie_anims.mdl"
$include "immolator_sequences.qci"
