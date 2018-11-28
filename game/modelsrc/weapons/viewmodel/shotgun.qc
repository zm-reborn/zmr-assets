$modelname "weapons/c_shotgun_zm.mdl"
$cdmaterials "models/weapons/v_shotgun"


// These bones have to be renamed for the bone merge to work properly.
$renamebone "Rig_base" "ValveBiped.Bip01_Spine4"
$renamebone "Bip01_L_Clavicle" "ValveBiped.Bip01_L_Clavicle"
$renamebone "Bip01_L_UpperArm" "ValveBiped.Bip01_L_UpperArm"
$renamebone "Bip01_L_Forearm" "ValveBiped.Bip01_L_Forearm"
$renamebone "Bip01_L_Hand" "ValveBiped.Bip01_L_Hand"
$renamebone "Bip01_L_Finger4" "ValveBiped.Bip01_L_Finger4"
$renamebone "Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger41"
$renamebone "Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger42"
$renamebone "Bip01_L_Finger3" "ValveBiped.Bip01_L_Finger3"
$renamebone "Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger31"
$renamebone "Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger32"
$renamebone "Bip01_L_Finger2" "ValveBiped.Bip01_L_Finger2"
$renamebone "Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger21"
$renamebone "Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger22"
$renamebone "Bip01_L_Finger1" "ValveBiped.Bip01_L_Finger1"
$renamebone "Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger11"
$renamebone "Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger12"
$renamebone "Bip01_L_Finger0" "ValveBiped.Bip01_L_Finger0"
$renamebone "Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger01"
$renamebone "Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger02"
//$renamebone "leftarm" ""
$renamebone "Bip01_R_Clavicle" "ValveBiped.Bip01_R_Clavicle"
$renamebone "Bip01_R_UpperArm" "ValveBiped.Bip01_R_UpperArm"
$renamebone "Bip01_R_Forearm" "ValveBiped.Bip01_R_Forearm"
$renamebone "Bip01_R_Hand" "ValveBiped.Bip01_R_Hand"
$renamebone "Bip01_R_Finger4" "ValveBiped.Bip01_R_Finger4"
$renamebone "Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger41"
$renamebone "Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger42"
$renamebone "Bip01_R_Finger3" "ValveBiped.Bip01_R_Finger3"
$renamebone "Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger31"
$renamebone "Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger32"
$renamebone "Bip01_R_Finger2" "ValveBiped.Bip01_R_Finger2"
$renamebone "Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger21"
$renamebone "Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger22"
$renamebone "Bip01_R_Finger1" "ValveBiped.Bip01_R_Finger1"
$renamebone "Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger11"
$renamebone "Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger12"
$renamebone "Bip01_R_Finger0" "ValveBiped.Bip01_R_Finger0"
$renamebone "Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger01"
$renamebone "Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger02"
//$renamebone "rightarm" ""


$bodygroup "studio"
{
	studio "shotgun/c_shotgun_zm_reference.smd"
}


$opaque

$attachment "muzzle" "ValveBiped.Muzzle" 0 0 0 rotate 0 0 0
$attachment "1" "ValveBiped.Eject" 0 0 0 rotate 0 0 0


$include "shared.qci"


// Sequences
$include "shotgun/shotgun_sequences.qci"


// Bone merge the arms.
$include "arm_bonemerge.qci"

