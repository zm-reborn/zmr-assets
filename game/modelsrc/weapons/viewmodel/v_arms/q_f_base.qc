
$modelname	"weapons/c_arms_female.mdl"
//$modelname	"weapons/c_arms_female_bare.mdl"
$body studio "ref_f_hands.smd"

$cdmaterials "models/arms"

// mehis.cpp only
// static int BodyGroup_Farms = FindBodygroupByName("f_arm_sleeves"); // calculate this value once
// SetBodygroup( BodyGroup_Farms , 1 ); // red_pinstripe

$bodygroup f_arm_sleeves
{
	studio "ref_f_rpinstripe"
//	studio "ref_f_cyanswacket"
//	studio "ref_f_greenswacket"
//	studio "ref_f_brownjacket"
	blank
	blank
	blank
	blank
	blank
	blank
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
