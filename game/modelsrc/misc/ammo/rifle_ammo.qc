// Created by Crowbar 0.44.0.0

$modelname "items\357ammo.mdl"

$bodygroup "stoodyo"
{
	studio "rifle_ammo_wboolet_lod0.smd"
}
$lod 5
{
	replacemodel "rifle_ammo_wboolet_lod0.smd" "rifle_ammo_wboolet_lod1.smd"
}
$lod 10
{
	replacemodel "rifle_ammo_wboolet_lod0.smd" "rifle_ammo_wboolet_lod2.smd"
}
$lod 15
{
	replacemodel "rifle_ammo_wboolet_lod0.smd" "rifle_ammo_wboolet_lod3.smd"
}

// it was a rectangle, 12 tris
//$lod 4
//{
//	replacemodel "rifle_ammo_wboolet_lod0.smd" "rifle_ammo_wboolet_lod200.smd"
//}

$surfaceprop "item"
$contents "solid"

$cdmaterials "models\items\zmr_ammo"
$cdmaterials "models\weapons\rifle_zmr"


// uses rifle_ammo.vmt
// boolet315.vmt


$sequence "idle" {
	"rifle_wboolet_idle.smd"
	fps 5
	loop
}

$collisionmodel "rifle_wboolet_coll.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}

$KeyValues
{
	prop_data 
	{
		"base"		"Item.Small"
	}
}
