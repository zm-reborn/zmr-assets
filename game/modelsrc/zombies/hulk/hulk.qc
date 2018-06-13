//$cd "L:\Steam\steamapps\SourceMods\zombie_master_assets\modelsrc\Zombie\hulk"
$modelname "zombie/hulk.mdl"
$model "studio" "Zombie_poison_reference.smd"

$texturegroup "skinfamilies"
{
	{ "PoisonZombie_sheet"  }
	{ "PoisonZombie_sheet2" }
	{ "PoisonZombie_sheet3" }
	{ "PoisonZombie_sheet4" }
}

$lod 10
 {
  replacemodel "Zombie_poison_reference" "lod1_Zombie_poison_reference"
}
$lod 20
 {
  replacemodel "Zombie_poison_reference" "lod2_Zombie_poison_reference"
}
$lod 35
 {
  replacemodel "Zombie_poison_reference" "lod3_Zombie_poison_reference"
}
$lod 60
 {
  replacemodel "Zombie_poison_reference" "lod4_Zombie_poison_reference"
}
$shadowlod
{
  replacemodel "Zombie_poison_reference" "lod5_Zombie_poison_reference"
}

$collisionjoints "phymodel.smd" {

	$mass 115.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "valvebiped.bip01_pelvis"

	$jointconstrain "valvebiped.bip01_r_thigh" x limit -28.00 30.00 0.20
	$jointconstrain "valvebiped.bip01_r_thigh" y limit -46.00 10.00 0.20
	$jointconstrain "valvebiped.bip01_r_thigh" z limit -59.00 59.00 0.20

	$jointconstrain "valvebiped.bip01_r_calf" x limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_r_calf" y limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_r_calf" z limit -97.00 37.00 0.20

	$jointconstrain "valvebiped.bip01_l_thigh" x limit -37.00 30.00 0.20
	$jointconstrain "valvebiped.bip01_l_thigh" y limit -64.00 19.00 0.20
	$jointconstrain "valvebiped.bip01_l_thigh" z limit -50.00 61.00 0.20

	$jointconstrain "valvebiped.bip01_l_calf" x limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_l_calf" y limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_l_calf" z limit -35.00 111.00 0.20

	$jointconstrain "valvebiped.bip01_l_foot" x limit -10.00 10.00 0.20
	$jointconstrain "valvebiped.bip01_l_foot" y limit -17.00 17.00 0.20
	$jointconstrain "valvebiped.bip01_l_foot" z limit -30.00 32.00 0.20

	$jointconstrain "valvebiped.bip01_spine" x limit -32.00 32.00 0.20
	$jointconstrain "valvebiped.bip01_spine" y limit -32.00 30.00 0.20
	$jointconstrain "valvebiped.bip01_spine" z limit -46.00 32.00 0.20

	$jointconstrain "valvebiped.bip01_spine2" x limit -17.00 17.00 0.20
	$jointconstrain "valvebiped.bip01_spine2" y limit -3.00 3.00 0.20
	$jointconstrain "valvebiped.bip01_spine2" z limit -26.00 26.00 0.20

	$jointconstrain "valvebiped.bip01_r_upperarm" x limit -41.00 77.00 0.20
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit -48.00 70.00 0.20
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -61.00 77.00 0.20

	$jointconstrain "valvebiped.bip01_l_upperarm" x limit -61.00 50.00 0.20
	$jointconstrain "valvebiped.bip01_l_upperarm" y limit -79.00 48.00 0.20
	$jointconstrain "valvebiped.bip01_l_upperarm" z limit -79.00 88.00 0.20

	$jointconstrain "valvebiped.bip01_l_forearm" x limit 1.00 1.00 0.20
	$jointconstrain "valvebiped.bip01_l_forearm" y limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_l_forearm" z limit -73.00 77.00 0.20

	$jointmassbias "valvebiped.bip01_l_hand" 0.20
	$jointconstrain "valvebiped.bip01_l_hand" x limit -39.00 59.00 0.20
	$jointconstrain "valvebiped.bip01_l_hand" y limit -19.00 19.00 0.20
	$jointconstrain "valvebiped.bip01_l_hand" z limit -79.00 35.00 0.20

	$jointconstrain "valvebiped.bip01_r_forearm" x limit 0.00 0.00 0.20
	$jointconstrain "valvebiped.bip01_r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" z limit -57.00 88.00 0.20

	$jointmassbias "valvebiped.bip01_r_hand" 0.20
	$jointconstrain "valvebiped.bip01_r_hand" x limit -44.00 12.00 0.20
	$jointconstrain "valvebiped.bip01_r_hand" y limit -28.00 28.00 0.20
	$jointconstrain "valvebiped.bip01_r_hand" z limit -55.00 59.00 0.20

	$jointconstrain "valvebiped.bip01_r_foot" x limit -30.00 30.00 0.20
	$jointconstrain "valvebiped.bip01_r_foot" y limit -28.00 28.00 0.20
	$jointconstrain "valvebiped.bip01_r_foot" z limit -30.00 26.00 0.20
}

$scale 1.5


$cdmaterials "models\zombie_poison\"
$hboxset "default"
$hbox 1 "ValveBiped.Bip01_Spine4"	2.333333333	2.666666667	3	7	-2.666666667	-4
$hbox 2 "ValveBiped.Bip01_Spine2"	-2	-7	-1.666666667	11.33333333	7	8.333333333
$hbox 4 "ValveBiped.Bip01_L_UpperArm"	-2.726666667	-2.42	-2.593333333	12.05333333	2.246666667	2.073333333
$hbox 4 "ValveBiped.Bip01_L_Forearm"	0.6666666667	-2.666666667	-1.466666667	12.66666667	1.333333333	2.533333333
$hbox 4 "ValveBiped.Bip01_L_Hand"	0	-1.066666667	-2.56	8	1.6	1.44
$hbox 5 "ValveBiped.Bip01_R_UpperArm"	-2.666666667	-2.1	-2.746666667	12	3.233333333	2.586666667
$hbox 5 "ValveBiped.Bip01_R_Forearm"	-0.7933333333	-1.326666667	-1.493333333	12.54	2.673333333	2.506666667
$hbox 5 "ValveBiped.Bip01_R_Hand"	0.6666666667	-1.333333333	-1.333333333	7.333333333	1.333333333	2.666666667
$hbox 6 "ValveBiped.Bip01_L_Thigh"	-0.6666666667	-2.333333333	-3.953333333	19.33333333	3.666666667	2.046666667
$hbox 6 "ValveBiped.Bip01_L_Calf"	-2.686666667	-4.513333333	-3.233333333	21.31333333	1.486666667	2.766666667
$hbox 6 "ValveBiped.Bip01_L_Foot"	0	-2.053333333	-2.02	8	1.946666667	1.98
$hbox 7 "ValveBiped.Bip01_R_Thigh"	-0.6666666667	-2.853333333	-2.293333333	19.33333333	2.48	3.04
$hbox 7 "ValveBiped.Bip01_R_Calf"	-1.806666667	-1.7	-3.086666667	19.52666667	3.633333333	2.246666667
$hbox 7 "ValveBiped.Bip01_R_Foot"	0	-2.333333333	-2.333333333	8	2.333333333	2.333333333
$hbox 3 "ValveBiped.Bip01_Spine"	-4.666666667	-6.333333333	-4.333333333	7.333333333	6.333333333	4.333333333
// Model uses material "PoisonZombie_sheet.vmt"
// Model uses material "Blackcrab_sheet.vmt"


$attachment "eyes" "ValveBiped.Bip01_Spine4" 7.00 0.00 0.00 rotate -20.00 0.00 180.00
$attachment "head" "ValveBiped.Bip01_Spine4" 10.00 0.00 0.00 rotate 0.00 0.00 180.00
$attachment "chest" "ValveBiped.Bip01_Spine4" -6.00 -0.00 4.00 rotate 0.00 0.00 -0.00
$attachment "Blood_Left" "ValveBiped.Bip01_L_Finger2" -0.00 -0.00 -0.00 rotate 0.00 -0.00 -0.00
$attachment "Blood_Right" "ValveBiped.Bip01_R_Hand" 6.19 -0.66 0.43 rotate 1.68 23.40 11.70
$surfaceprop "flesh"
$eyeposition 0.000 0.000 64.000
$illumposition 16.252 -0.773 29.870
$sequence refpose "refpose" fps 30.00
$sequence Idle01_fix "Idle01_fix" loop ACT_IDLE 1 fps 30.00
$sequence FireWalk "FireWalk" LX LY LZ loop ACT_ZOM_WALK_ON_FIRE 1 fps 60.00 {
	
  { event AE_ZOMBIE_STEP_LEFT 40 }
  { event AE_ZOMBIE_STEP_RIGHT 10 }
}

$sequence walk_fix "Walk_fix" LX LY LZ loop ACT_WALK 1 fps 60.00 {
  { event AE_ZOMBIE_STEP_LEFT 40 }
  { event AE_ZOMBIE_STEP_RIGHT 10 }
}

$sequence Run "Run" LX LY LZ loop fps 30.00
$sequence melee_01 "melee_01" LX LY LZ  ACT_MELEE_ATTACK1 1 fps 40.00 {
  { event AE_ZOMBIE_ATTACK_SCREAM 5 }
  { event AE_ZOMBIE_ATTACK_RIGHT 29 }
}

$sequence "FlinchC" "FlinchC" ACT_BIG_FLINCH 1 fps 30.00
$sequence "FlinchR" "FlinchR" ACT_FLINCH_RIGHTARM 1 fps 30.00
$sequence "FlinchL" "FlinchL" ACT_FLINCH_LEFTARM 1 fps 30.00

$sequence ragdoll "ragdoll" ACT_DIERAGDOLL 1 fps 30.00

