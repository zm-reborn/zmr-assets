// QC File generated by the Wall Worm Pro Version 5.0.29
// Exported From: C:\Users\azunyan\Documents\3dsMax2k17\scenes\z0mbeeemastar\zmr_rifle\r3152\w_r3151_WWMT.max
// Get the latest version and notes at:
// http://dev.wallworm.com 

$scale 1.0
$modelname	"weapons/w_rifle.mdl"
$origin 0 0 0 0 
$body w_rifle "w_rifle.smd"
$collisionjoints "w_rifle_hull.smd" {
	$concaveperjoint
	$inertia 1.0
	$damping 0.0
	$rotdamping 0.0
	$drag 0.0
	$mass 10.0

}
$surfaceprop "weapon" 
$contents "solid"
$cdmaterials "models/weapons/w_rifle_zmr"
$cdmaterials ""
$texturegroup "w_rifle_skins"
{

 {  "rifle_zm_3rd" }

}
$sequence idle "w_rifle.smd"  activity ACT_IDLE -1 loop fps 60
$attachment "muzzle" "wmodel" 0.114333 26.4211 1.42433 rotate 8.55478 88.4217 89.4995
$attachment "1" "wmodel" 0.0123641 0.28918 5.31333 rotate 0 0 -10.0

$include	"w_rifle_wwmt_custom.qci"
