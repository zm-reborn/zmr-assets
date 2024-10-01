
$modelname	"models/weapons/v_f_arms.mdl"
$body studio "ref_f_hands.smd"

/*
	skinfamily for w/b hands
*/

// mehis.cpp only
// static int BodyGroup_Farms = FindBodygroupByName("f_arm_sleeves"); // calculate this value once
// SetBodygroup( BodyGroup_Farms , 1 ); // red_pinstripe
/*
$bodygroup f_arm_sleeves
{
	studio "ref_f_rpinstripe"
	studio "ref_f_cyanswacket"
	studio "ref_f_greenswacket"
	studio "ref_f_brownjacket"
...etc
	blank
}

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

$cdmaterials "models/arms"

$sequence idle "s_armbase_idle.smd"  activity ACT_IDLE -1 loop fps 60
