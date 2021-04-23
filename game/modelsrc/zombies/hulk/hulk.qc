// Created by Crowbar 0.44.0.0

$modelname "zombie/hulk.mdl"

$bodygroup "studio"
{
	studio "hulk_reference.smd"
}
/*
$lod 10
{
	replacemodel "hulk_reference.smd" "hulk_body0_model0_lod1.smd"
}
$lod 20
{
	replacemodel "hulk_reference.smd" "hulk_body0_model0_lod2.smd"
}
$lod 35
{
	replacemodel "hulk_reference.smd" "hulk_body0_model0_lod3.smd"
}
$lod 60
{
	replacemodel "hulk_reference.smd" "hulk_body0_model0_lod4.smd"
}
$shadowlod
{
	replacemodel "hulk_reference.smd" "hulk_body0_model0_lod5.smd"
}
*/
$surfaceprop "flesh"

$contents "solid"

$eyeposition 0 0 64

$maxeyedeflection 90

$cdmaterials "models\zombie_poison\"

$texturegroup "skinfamilies"
{
	{ "PoisonZombie_sheet"  }
	{ "PoisonZombie_sheet2" }
	{ "PoisonZombie_sheet3" }
	{ "PoisonZombie_sheet4" }
}

$attachment "eyes" "ValveBiped.Bip01_Spine4" 10.5 0 0 rotate -20 0 180
$attachment "head" "ValveBiped.Bip01_Spine4" 15 0 0 rotate 0 0 180
$attachment "chest" "ValveBiped.Bip01_Spine4" -9 0 6 rotate 0 0 0
$attachment "Blood_Left" "ValveBiped.Bip01_L_Finger2" 0 0 0 rotate 0 0 0
$attachment "Blood_Right" "ValveBiped.Bip01_R_Hand" 9.29 -0.99 0.65 rotate 1.68 23.4 11.7

$cbox 0 0 0 0 0 0

$bbox -19.652 -31.255 -8.499 31.825 31.827 77.397

$hboxset "default"
//$hbox 1 "ValveBiped.Bip01_Spine4"	2.333333333	-2.666666667	-4	7	2.666666667	3
//$hbox 2 "ValveBiped.Bip01_Spine2"	-2	-7	-1.666666667	11.33333333	7	8.333333333
//$hbox 4 "ValveBiped.Bip01_L_UpperArm"	-2.726666667	-2.42	-2.593333333	12.05333333	2.246666667	2.073333333
//$hbox 4 "ValveBiped.Bip01_L_Forearm"	0.6666666667	-2.666666667	-1.466666667	12.66666667	1.333333333	2.533333333
//$hbox 4 "ValveBiped.Bip01_L_Hand"	0	-1.066666667	-2.56	8	1.6	1.44
//$hbox 5 "ValveBiped.Bip01_R_UpperArm"	-2.666666667	-2.1	-2.746666667	12	3.233333333	2.586666667
//$hbox 5 "ValveBiped.Bip01_R_Forearm"	-0.7933333333	-1.326666667	-1.493333333	12.54	2.673333333	2.506666667
//$hbox 5 "ValveBiped.Bip01_R_Hand"	0.6666666667	-1.333333333	-1.333333333	7.333333333	1.333333333	2.666666667
//$hbox 6 "ValveBiped.Bip01_L_Thigh"	-0.6666666667	-2.333333333	-3.953333333	19.33333333	3.666666667	2.046666667
//$hbox 6 "ValveBiped.Bip01_L_Calf"	-2.686666667	-4.513333333	-3.233333333	21.31333333	1.486666667	2.766666667
//$hbox 6 "ValveBiped.Bip01_L_Foot"	0	-2.053333333	-2.02	8	1.946666667	1.98
//$hbox 7 "ValveBiped.Bip01_R_Thigh"	-0.6666666667	-2.853333333	-2.293333333	19.33333333	2.48	3.04
//$hbox 7 "ValveBiped.Bip01_R_Calf"	-1.806666667	-1.7	-3.086666667	19.52666667	3.633333333	2.246666667
//$hbox 7 "ValveBiped.Bip01_R_Foot"	0	-2.333333333	-2.333333333	8	2.333333333	2.333333333
//$hbox 3 "ValveBiped.Bip01_Spine"	-4.666666667	-6.333333333	-4.333333333	7.333333333	6.333333333	4.333333333
/// excel math 1.5x:
$hbox 1 "ValveBiped.Bip01_Spine4"	3.5	-4	-6	10.5	4	4.5
$hbox 2 "ValveBiped.Bip01_Spine2"	-3	-10.5	-2.5	17	10.5	12.5
$hbox 4 "ValveBiped.Bip01_L_UpperArm"	-4.09	-3.63	-3.89	18.08	3.37	3.11
$hbox 4 "ValveBiped.Bip01_L_Forearm"	1	-4	-2.2	19	2	3.8
$hbox 4 "ValveBiped.Bip01_L_Hand"	0	-1.6	-3.84	12	2.4	2.16
$hbox 5 "ValveBiped.Bip01_R_UpperArm"	-4	-3.15	-4.12	18	4.85	3.88
$hbox 5 "ValveBiped.Bip01_R_Forearm"	-1.19	-1.99	-2.24	18.81	4.01	3.76
$hbox 5 "ValveBiped.Bip01_R_Hand"	1	-2	-2	11	2	4
$hbox 6 "ValveBiped.Bip01_L_Thigh"	-1	-3.5	-5.93	29	5.5	3.07
$hbox 6 "ValveBiped.Bip01_L_Calf"	-4.03	-6.77	-4.85	31.97	2.23	4.15
$hbox 6 "ValveBiped.Bip01_L_Foot"	0	-3.08	-3.03	12	2.92	2.97
$hbox 7 "ValveBiped.Bip01_R_Thigh"	-1	-4.28	-3.44	29	3.72	4.56
$hbox 7 "ValveBiped.Bip01_R_Calf"	-2.71	-2.55	-4.63	29.29	5.45	3.37
$hbox 7 "ValveBiped.Bip01_R_Foot"	0	-3.5	-3.5	12	3.5	3.5
$hbox 3 "ValveBiped.Bip01_Spine"	-7	-9.5	-6.5	11	9.5	6.5



$definebone "ValveBiped.Bip01" "" -3.606493 0.942271 36.701271 0 -6.867759 112.499978 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01" 0.000005 3.345127 -2.981986 -24.86952 100.440187 7.185694 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.126701 0 0 -17.999984 0.391158 -3.150008 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.613001 -0.000001 0 -17.099981 -11.602853 1.350001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 9.183996 0 0 -8.13823 -1.376988 -0.405139 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.667106 -2.621271 1.204556 -9.170307 -104.126884 9.618751 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028141 -0.000001 0.000004 -49.152214 29.436097 -137.856004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 12.693001 0.000002 -0.000002 0.000004 -72.241149 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.575996 0.000004 -0.000002 34.496366 20.094965 -78.677592 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 5.591137 0.133425 -1.865048 9.699994 -3.449994 11.70002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 5.293001 0 0 -0.358099 46.381442 -4.215539 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 5.739708 0.047594 -0.612882 -1.245497 20.064811 -8.376823 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 5.652502 0.000001 0.000001 -0.3479 31.088791 -3.881569 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 5.56221 0.327353 0.486442 -20.312551 44.389492 -18.899996 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 5.158497 0 0 -0.325428 24.804022 -4.026871 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 3.325998 -0.000003 -0.000002 -0.423404 80.664391 0.509083 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.659055 2.569643 1.216358 2.098459 91.936587 -9.486457 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.02814 0 0 -42.844066 -10.49028 95.355131 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 12.693002 0 -0.000001 0.000007 55.794112 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.598288 -0.13827 0.107484 2.543251 7.504027 -36.137544 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 5.928192 -0.249669 -0.698116 8.982895 29.349992 22.500003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Pelvis" "ValveBiped.Bip01" 0 0.000004 0.000002 0 8.516902 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.890452 -0.000004 -0.00009 -50.60982 -86.776004 -99.569986 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.590996 -0.000002 0 0 31.493084 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.699577 0 0 -22.330803 -49.202463 1.465741 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.879457 -0.000001 0 -0.169253 -33.486345 -4.918212 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.890442 -0.000008 -0.000087 -40.555792 -95.988146 67.054795 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.590996 0 0.000001 -0.000001 -41.711832 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.699572 0.000001 -0.000001 9.053534 79.705371 3.183755 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.879453 0 0.000001 0.216637 35.689542 -5.550643 0 0 0 0 0 0


$sequence "refpose" {
	"hulk_anims\refpose.smd"
	fps 30
}

$sequence "idle" {
	"hulk_anims\Idle01_fix.smd"
	activity "ACT_IDLE" -1
	fps 30
	loop
}

/*
$sequence "FireWalk" {
	"canuevendefault_moves.smd"
	LX LY LZ
	activity "ACT_ZOM_WALK_ON_FIRE" 1
	{ event AE_ZOMBIE_STEP_LEFT 40 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 10 "" }
	fps 60
	loop
}

$sequence "Run" {
	"canuevendefault_moves.smd"
	LX LY LZ
	fps 120
	loop
}
*/
/*
$sequence "walk_fix" {
	"canuevendefault_moves.smd"
	LX LY LZ
	activity "ACT_WALK" -1
	{ event AE_ZOMBIE_STEP_LEFT 40 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 10 "" }
	fps 60
	loop
}
*/
$sequence "canuevendefault" {
	"canuevendefault_moves.smd"
	LX LY LZ
	activity "ACT_WALK" -1
	{ event AE_ZOMBIE_STEP_LEFT 40 "" }
	{ event AE_ZOMBIE_STEP_RIGHT 10 "" }
	fps 60
	loop
}

// oops i made him move at like 135 vel so 34.5 fps instead of 60
$animation walk_SW "matrix_walk/sw" LX LY LZ loop fps 34.5
$animation walk_S "matrix_walk/s" LX LY LZ loop fps 34.5
$animation walk_SE "matrix_walk/se" LX LY LZ loop fps 34.5
$animation walk_W "matrix_walk/w" LX LY LZ loop fps 34.5
$animation walk_C "matrix_walk/idle" LX LY LZ loop fps 30
$animation walk_E "matrix_walk/e" LX LY LZ loop fps 34.5
$animation walk_NW "matrix_walk/nw" LX LY LZ loop fps 34.5
$animation walk_N "matrix_walk/n" LX LY LZ loop fps 34.5
$animation walk_NE "matrix_walk/ne" LX LY LZ loop fps 34.5

$sequence walk {
	walk_SW   walk_S   walk_SE
	walk_W    walk_C   walk_E
	walk_NW   walk_N   walk_NE // line breaks are for readability only

	blendwidth 3
 	blend move_x -1 1
 	blend move_y -1 1

	// addlayer look // blends look/aim direction on top of walk direction
}



$sequence "melee_01" {
	"hulk_anims\melee_01.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event AE_ZOMBIE_ATTACK_SCREAM 5 "" }
	{ event AE_ZOMBIE_ATTACK_RIGHT 29 "" }
	fps 40
} subtract idle 0 delta

$sequence "FlinchC" {
	"hulk_anims\FlinchC.smd"
	activity "ACT_BIG_FLINCH" 1
	fps 30
} subtract walk_c 0 delta

$sequence "FlinchR" {
	"hulk_anims\FlinchR.smd"
	activity "ACT_FLINCH_RIGHTARM" 1
	fps 30
} subtract walk_c 0 delta

$sequence "FlinchL" {
	"hulk_anims\FlinchL.smd"
	activity "ACT_FLINCH_LEFTARM" 1
	fps 30
} subtract walk_c 0 delta

$sequence "ragdoll" {
	"hulk_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fps 30
}

$collisionjoints "hulk_physics.smd"
{
	$mass 115
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "valvebiped.bip01_pelvis"


	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -28 30 0.008
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -46 10 0.008
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -59 59 0.008

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 0.008
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 0.008
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -97 37 0.008

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -37 30 0.008
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -64 19 0.008
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -50 61 0.008

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 0.008
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 0.008
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -35 111 0.008

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -10 10 0.008
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -17 17 0.008
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -30 32 0.008

	$jointconstrain "ValveBiped.Bip01_Spine" x limit -32 32 0.008
	$jointconstrain "ValveBiped.Bip01_Spine" y limit -32 30 0.008
	$jointconstrain "ValveBiped.Bip01_Spine" z limit -46 32 0.008

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -17 17 0.008
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -3 3 0.008
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -26 26 0.008

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -41 77 0.008
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -48 70 0.008
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -61 77 0.008

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -61 50 0.008
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -79 48 0.008
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -79 88 0.008

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 1 1 0.008
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0.008
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -73 77 0.008

	$jointmassbias "ValveBiped.Bip01_L_Hand" 0.2
	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -39 59 0.008
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -19 19 0.008
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -79 35 0.008

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 0.008
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -57 88 0.008

	$jointmassbias "ValveBiped.Bip01_R_Hand" 0.2
	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -44 12 0.008
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -28 28 0.008
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -55 59 0.008

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -30 30 0.008
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -28 28 0.008
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -30 26 0.008
}
