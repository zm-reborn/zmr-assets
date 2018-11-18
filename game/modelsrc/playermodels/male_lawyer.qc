$modelname "male_lawyer.mdl"
$cdmaterials "models/lawyer"
$cdmaterials "models/humans/male"


$model "male_lawyer" "lawyer/male_lawyer_reference.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.160000 -3.690002 68.130008 "eyeball_r" 1 4 "iris_unused" 0.63
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.230000 -3.690001 68.240008 "eyeball_l" 1 -4 "iris_unused" 0.63

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	flexfile "lawyer/male_lawyer.vta"
	{
		defaultflex frame 0
	}
}


$include "shared.qci"
$include "attachments.qci"
$include "hitboxes.qci"
$include "lodmacro4.qci"
$makelods "lawyer" "male_lawyer_reference"
$include "ikchain.qci"
$include "anims.qci"


//$proceduralbones "lawyer/male_lawyer.vrd"


$includemodel "humans/male_shared.mdl"
$includemodel "humans/male_ss.mdl"
$includemodel "humans/male_gestures.mdl"
$includemodel "humans/male_postures.mdl"

//$includemodel "humans/male_shared.mdl"
//$includemodel "breen_anims.mdl"
//$includemodel "gman_gestures.mdl"

