// Created by Crowbar 0.71

//$modelname "items/item_item_crate.mdl"
$modelname "items/crate_ammo.mdl"

$body "stoodio" ref_ammocrate_composite.smd

$texturegroup "skinfamilies"
{
	{ "sticker_ammo_generic" }
	{ "sticker_ammo_pistol" }
	{ "sticker_ammo_revolver" }
	{ "sticker_ammo_shotgun" }
	{ "sticker_ammo_rifle" }
	{ "sticker_ammo_mac" }
}


$surfaceprop "wood"

$contents "solid"

$cdmaterials "models\items"
// crate_ammo.vmt
// ammo_sticker_*.vmt

$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "coll_ammocrate.smd"
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
		"model"		"items/crategibs/ammo_top"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/ammo_bottom"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/ammo_front"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/ammo_left"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/ammo_back"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/ammo_right"
		"fadetime"		"15"
	}
}

$keyvalues
{
	prop_data 
	{
		"base"		"Wooden.Small"
	}
}
