// QC File generated by the Wall Worm Pro Version 5.0.29
// Exported From: C:\Users\azunyan\Documents\3ds Max 2021\scenes\zm_crates\allcrates_propdata.max
// Get the latest version and notes at:
// http://dev.wallworm.com 

$scale 1.0
$modelname	"items/crategibs/melee_back.mdl"
$body melee_back "melee_back.smd"
$collisionmodel "melee_back_hull.smd" {
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
}

$keyvalues
{
	prop_data 
	{
		"base"		"Wooden.Small"
	}
}
$surfaceprop "wood" 
$contents "solid"
$cdmaterials "models/items"
$sequence idle "melee_back.smd"  activity ACT_IDLE -1 loop fps 30


$include	"melee_back_wwmt_custom.qci"
