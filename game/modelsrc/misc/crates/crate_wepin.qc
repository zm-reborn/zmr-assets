// Created by Crowbar 0.71

//$modelname "items/item_item_crate.mdl"
$modelname "items/crate_wepin.mdl"

$body "stoodio" ref_wepincrate_composite.smd

$texturegroup "skinfamilies"
{
	{ "sticker_weapon_generic" }
	{ "sticker_weapon_pistol" }
	{ "sticker_weapon_revolver" }
	{ "sticker_weapon_shotgun" }
	{ "sticker_weapon_rifle" }
	{ "sticker_weapon_mac" }
}


$surfaceprop "wood"

$contents "solid"

$cdmaterials "models\items"
// crate_weapon.vmt
// weapon_sticker_*.vmt

$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "coll_wepincrate.smd"
{
	$mass 17
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
		"model"		"items/crategibs/wepin_top"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/wepin_bottom"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/wepin_front"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/wepin_left"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/wepin_back"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/wepin_right"
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
