$modelname "items/item_item_crate.mdl"
$cdmaterials "models/items/item_crate"


$bodygroup "body"
{
	studio "item_crate/item_item_crate_reference.smd"
}


$surfaceprop "wood"

$contents "solid"

$illumposition 0 0 12

//$noforcedfade


$texturegroup "skinfamilies"
{
	{ "crate_generic" }
	{ "crate_wep_molotov" }
	{ "crate_wep_sledge" }
	{ "crate_wep_crowbar" }
	{ "crate_amm_pistol" }
	{ "crate_amm_revolver" }
	{ "crate_amm_shotgun" }
	{ "crate_amm_rifle" }
	{ "crate_amm_mac10" }
	{ "crate_wep_pistol" }
	{ "crate_wep_revolver" }
	{ "crate_wep_shotgun" }
	{ "crate_wep_rifle" }
	{ "crate_wep_mac10" }
}


$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"item_crate/idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "item_crate/item_item_crate_physics.smd"
{
	$mass 15
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1
}

$collisiontext
{
	break 
	{
		"model"		"items/item_item_crate_chunk01"
		"fadetime"		"20"
	}
	break 
	{
		"model"		"items/item_item_crate_chunk02"
		"fadetime"		"20"
	}
	break 
	{
		"model"		"items/item_item_crate_chunk05"
		"fadetime"		"20"
	}
	break 
	{
		"model"		"items/item_item_crate_chunk06"
		"fadetime"		"20"
	}
	break 
	{
		"model"		"items/item_item_crate_chunk07"
		"fadetime"		"20"
	}
	break 
	{
		"model"		"items/item_item_crate_chunk08"
		"fadetime"		"20"
	}
	break 
	{
		"model"		"items/item_item_crate_chunk09"
		"fadetime"		"20"
	}
}

$keyvalues
{
	prop_data 
	{
		"base"		"Wooden.Small"
	}
	//physgun_interactions 
	//{
	//	"onfirstimpact"		"break"
	//}
}
