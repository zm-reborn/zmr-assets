// Created by Crowbar 0.71

//$modelname "items/item_item_crate.mdl"
$modelname "items/crate_throw.mdl"

$body "stoodio" ref_throwcrate_sep_bottles.smd


$surfaceprop "wood"

$contents "solid"

$cdmaterials "models\items"
// crate_bottle.vmt crate_throw.vmt


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "coll_throwcrate.smd"
{
	$mass 13
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
		"model"		"items/crategibs/throw_top"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/throw_bottom"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/throw_front"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/throw_left"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/throw_back"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/throw_right"
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
