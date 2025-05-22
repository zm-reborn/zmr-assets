
$modelname	"weapons/c_arms_female.mdl"
//$modelname	"weapons/c_arms_female_bare.mdl"
$body studio "ref_f_hands.smd"

$cdmaterials "models/arms"

// mehis.cpp only
// static int BodyGroup_Farms = FindBodygroupByName("f_arm_sleeves"); // calculate this value once
// SetBodygroup( BodyGroup_Farms , 1 ); // greenswacket

$bodygroup f_arm_sleeves
{
	studio "ref_f_cyantracket"
	studio "ref_f_greenswacket"
	studio "ref_f_pistachiotracket"
	studio "ref_f_taupeswacket"
	studio "ref_f_redbuttonshirt"
	studio "ref_f_purplebuttonshirt"
//	blank
}

$texturegroup "skinfamilies"
{
	{ "f_hands"       }
	{ "f_hands"       }
	{ "f_hands_black" }
	{ "f_hands"       }
	{ "f_hands"       }
	{ "f_hands_black" }
}


/*
// prep lod stuff with bodygroups
$lod 1
{
	replacemodel "ref_f_rpinstripe" "ref_f_rpinstripe_lod1"
	replacemodel "ref_f_cyanswacket" "ref_f_cyanswacket_lod1"
...
	}

$lod 2
{
	replacemodel "ref_f_rpinstripe" "ref_f_rpinstripe_lod1"
	replacemodel "ref_f_cyanswacket" "ref_f_cyanswacket_lod1"
...
}
*/


$sequence idle "s_armbase_idle.smd"  activity ACT_IDLE -1 loop fps 60
