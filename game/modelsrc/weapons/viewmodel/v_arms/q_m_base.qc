
$modelname	"weapons/c_arms_male.mdl"
//$modelname	"weapons/c_arms_male_bare.mdl"
$body studio "ref_m_hands.smd"

$cdmaterials "models\weapons\c_arms_citizen"
$cdmaterials "models\arms"

// mehis.cpp only
// static int BodyGroup_Marms = FindBodygroupByName("m_arm_sleeves"); // calculate this value once
// SetBodygroup( BodyGroup_Marms , 1 ); // black_denim

$bodygroup m_arm_sleeves
{
	studio "ref_m_gdresshirt"
	studio "ref_m_bdenim"
	studio "ref_m_owool"
	studio "ref_m_rhoodie"
	studio "ref_m_wletter"
	studio "ref_m_gcotton"
	studio "ref_m_bleather"
	studio "ref_m_btartan"
	studio "ref_m_btrack"
	studio "ref_m_mechanic"
	studio "ref_m_lawyer"
}

$renamematerial c_arms_citizen_hands c_arms_citizen_hands_black
/*
$rename is needed because a bug and original.smd uses the *hands.vmt
which fricks up texturegroup[0] since its supposed to be "default" but male01 is black
see $texturegroup valve sdk wiki
*/

$texturegroup "skinfamilies"
{
	{ "c_arms_citizen_hands_black" } // graybandie
	{ "c_arms_citizen_hands"       } // blackdenim
	{ "c_arms_citizen_hands_black" } // orangewool
	{ "c_arms_citizen_hands"       } // redhoodie
	{ "c_arms_citizen_hands"       } // lettermanjacket
	{ "c_arms_citizen_hands"       } // greencotton
	{ "c_arms_citizen_hands"       } // leatherjacket
	{ "c_arms_citizen_hands"       } // bluetartan
	{ "c_arms_citizen_hands"       } // bluetracksuit
	{ "c_arms_citizen_hands"       } // mechanix
	{ "c_arms_citizen_hands"       } // suitpiece
}

/*
// prep lods stuff with bodygroups
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


$sequence idle "s_armbase_idle.smd"  activity ACT_IDLE -1 loop fps 60
