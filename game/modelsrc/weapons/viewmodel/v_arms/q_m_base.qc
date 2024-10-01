
$modelname	"models/weapons/v_m_arms.mdl"
$body studio "ref_m_hands.smd"

/*
	skinfamily for w/b hands, rhoodie/btrack
*/

// mehis.cpp only
// static int BodyGroup_Marms = FindBodygroupByName("m_arm_sleeves"); // calculate this value once
// SetBodygroup( BodyGroup_Marms , 1 ); // black_denim
/*
$bodygroup m_arm_sleeves
{
	studio "ref_m_bdenim"
	studio "ref_m_bleather"
	studio "ref_m_btartan"
	studio "ref_m_btrack"
	studio "ref_m_gcotton"
	studio "ref_m_gdresshirt"
	studio "ref_m_owool"
	studio "ref_m_rhoodie"
	studio "ref_m_wletter"
...etc
	blank
}
add another bgroup for glove or bake into sleeves

// prep lod stuff with bodygroups
$lod 1
{
	replacemodel "ref_m_bdenim" "ref_m_bdenim_lod1"
...
	}

$lod 2
{
	replacemodel "ref_m_bdenim" "ref_m_bdenim_lod1"
...
}
*/

$cdmaterials "models/arms"

$sequence idle "s_armbase_idle.smd"  activity ACT_IDLE -1 loop fps 60
