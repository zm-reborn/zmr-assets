// Created by Crowbar 0.71

//$modelname "items/item_item_crate.mdl"
$modelname "items/crate_melee.mdl"

$body "stoodio" ref_meleecrate_sep.smd


$bodygroup "wepins"
{
	studio melee_strapfaxe_sep.smd
	studio melee_strapcbar_sep.smd
	studio melee_strapsledham_sep.smd
//	studio melee_morestuffgoeshere.smd
}


$surfaceprop "wood"


$contents "solid"

$cdmaterials "models\items"
$cdmaterials "models\weapons\crowbar_zmr"
$cdmaterials "models\weapons\sledham_zmr"
$cdmaterials "models\weapons\axe_zmr"
// crate_weapon.vmt faxe.vmt cbar_zmr.vmt sledham.vmt



$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "coll_meleecrate.smd"
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
		"model"		"items/crategibs/melee_top"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/melee_bottom"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/melee_front"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/melee_left"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/melee_back"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/melee_right"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/melee_strapleft"
		"fadetime"		"15"
	}
	break 
	{
		"model"		"items/crategibs/melee_strapright"
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
