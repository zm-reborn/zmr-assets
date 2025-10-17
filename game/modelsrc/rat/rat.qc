
/*TODO:
run ACT_ activity
rat smd name
rat mdl name
skinfamilies
*/
$modelname "rat/horatio.mdl"

$bodygroup "rat0042"
{
	studio "horatio.smd"
}
$surfaceprop "flesh"
$contents "solid"

//$eyeposition 0 0 64

$maxeyedeflection 90

$cdmaterials "models\rat\"

/*
$texturegroup "skinfamilies"
{
	{ "PoisonZombie_sheet"  }
	{ "PoisonZombie_sheet2" }
	{ "PoisonZombie_sheet3" }
	{ "PoisonZombie_sheet4" }
}
*/
$cbox 0 0 0 0 0 0
$hboxset "default"

//====================================================
// look matrix
$animation "lookNeutral" "anims/look_neutral"
$animation "lookDR" "anims/look_DR" subtract "lookNeutral" 0 fps 1
$animation "lookD" "anims/look_D" subtract "lookNeutral" 0 fps 1
$animation "lookDL" "anims/look_DL" subtract "lookNeutral" 0 fps 1
$animation "lookR" "anims/look_R" subtract "lookNeutral" 0 fps 1
$animation "lookL" "anims/look_L" subtract "lookNeutral" 0 fps 1
$animation "lookUR" "anims/look_UR" subtract "lookNeutral" 0 fps 1
$animation "lookU" "anims/look_U" subtract "lookNeutral" 0 fps 1
$animation "lookUL" "anims/look_UL" subtract "lookNeutral" 0 fps 1

// this attachment doesnt do anything but but calcblend requires one
$attachment "anim_attachment_head" "rat_neck" 0 0 0 rotate 180 0 0

$sequence look {
	lookDR	lookD   lookDL 
	lookR    "anims/look_neutral"   lookL
	lookUR   lookU   lookUL
	
	blendwidth 3
	blendref lookNeutral
 	calcblend head_yaw "anim_attachment_head" YR  
 	calcblend head_pitch "anim_attachment_head" ZR
	delta
	
}

$sequence "idle" {
	"anims\rat_idle.smd"
	activity "ACT_MP_STAND_IDLE" -1
	fps 30
	loop

	addlayer look
}

// walk matrix
$animation walk_C "anims/rat_idle" LX LY LZ loop fps 60

//$animation walk_C_stand "anims/rat_idle_stand" LX LY LZ loop fps 60
//$animation walk_C_sit "anims/rat_idle_sit" LX LY LZ loop fps 60

$animation walk_N "anims/walk_n" LX LY LZ loop fps 120
$animation walk_NE "anims/walk_ne" LX LY LZ loop fps 120
$animation walk_E "anims/walk_e" LX LY LZ loop fps 120
$animation walk_SE "anims/walk_se" LX LY LZ loop fps 120

//phase shift loop entry point to match cadence
$animation walk_S "anims/walk_s" LX LY LZ startloop 9 fps 120

// + phase shift
// startloop 9
$animation walk_SW "anims/walk_sw" LX LY LZ startloop 9 fps 120
$animation walk_W "anims/walk_w" LX LY LZ startloop 9 fps 120
$animation walk_NW "anims/walk_nw" LX LY LZ startloop 9 fps 120


$sequence walk {
 // line breaks are for readability only
	walk_SW   walk_W   walk_NW
	walk_S    walk_C   walk_N
	walk_SE   walk_E   walk_NE

	activity "ACT_MP_WALK" -1
	
	blendwidth 3
 	blend move_x -1 1
 	blend move_y 1 -1

	addlayer look // blends look/aim direction on top of walk direction
}

$sequence "run" {
	"anims\run.smd"
	LX LY LZ
	activity "ACT_MP_RUN" -1
	fps 60
	fadein 0.1
	fadeout 0.1
	loop
	
	addlayer look
}

$sequence "jump" {
	"anims\jump.smd"
//	LX LY LZ
	activity "ACT_MP_JUMP" -1
	fps 60
	fadein 0.1
	fadeout 0.1
	
	addlayer look
}

//====================================================
// jigglebones
$jigglebone "rat_tail002"
{
	is_flexible
	{
		length 10
		tip_mass 20
		angle_constraint 30
		pitch_stiffness 300
		pitch_damping 4
		yaw_stiffness 300
		yaw_damping 4
		}
}
$jigglebone "rat_tail003"
{
	is_flexible
	{
		length 10
		tip_mass 10
		angle_constraint 45
		pitch_stiffness 200
		pitch_damping 3
		yaw_stiffness 200
		yaw_damping 3
		}
}
$jigglebone "rat_tail004"
{
	is_flexible
	{
		length 10
		tip_mass 1
		angle_constraint 45
		pitch_stiffness 100
		pitch_damping 2
		yaw_stiffness 100
		yaw_damping 2
		}
}

//====================================================

$sequence "ragdoll" {
	"horatio.smd"
	activity "ACT_DIERAGDOLL" -1
	fps 30
}

$definebone "rat_hip" "" 0.000000 5.800790 4.654580 -5.441421 -90.000206 90.000206 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "rat_spine" "rat_hip" 3.867210 -0.000000 0.000000 -0.000000 5.394924 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "rat_neck" "rat_spine" 3.571130 0.000000 0.000000 -0.000000 0.888766 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "rat_r_forearm" "rat_spine" 3.466520 -1.906440 0.948191 -2.105557 -109.654961 -14.772633 0.000000 0.000000 0.000000 0.000001 -0.000002 0.000003
$definebone "rat_r_ulna" "rat_r_forearm" 1.490660 -0.000000 0.000000 0.719446 33.015892 0.749469 0.000000 0.000000 0.000000 -0.000000 0.000001 0.000001
$definebone "rat_r_paw" "rat_r_ulna" 1.997710 0.000000 0.000000 -14.541668 66.385757 -1.234633 0.000000 0.000000 0.000000 0.000002 0.000002 0.000000
$definebone "rat_r_pawtoe" "rat_r_paw" 0.358219 -0.000130 -0.000133 0.021334 -0.020867 -90.000206 0.000000 0.000000 0.000000 -0.000002 0.000002 -0.000000
$definebone "rat_face" "rat_neck" 2.116380 0.000000 -0.000000 -0.000000 -16.864840 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000 0.000000
$definebone "rat_nose" "rat_face" 1.978520 0.000000 0.000000 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "rat_r_femur" "rat_hip" 0.635818 -1.410480 1.826500 -1.112627 -125.280083 2.126504 0.000000 0.000000 0.000000 -0.000000 0.000001 0.000000
$definebone "rat_r_radius" "rat_r_femur" 1.575800 0.000000 0.000000 -0.386639 2.192202 -7.909797 -0.000000 0.000000 0.000000 -0.000000 0.000001 0.000001
$definebone "rat_r_foot" "rat_r_radius" 1.248790 0.000001 -0.000000 -10.323494 90.896896 3.733439 0.000000 0.000000 0.000000 0.000003 0.000002 -0.000000
$definebone "rat_r_toes" "rat_r_foot" 1.034550 0.000000 0.000000 0.000002 14.999975 0.000001 0.000000 0.000000 0.000000 0.000002 -0.000003 0.000001
$definebone "rat_l_femur" "" 1.826500 5.034090 3.310750 60.142807 87.763954 -94.043007 -0.000000 0.000000 0.000000 -0.000000 -0.000001 0.000000
$definebone "rat_l_foot" "" 1.891520 6.397520 0.838474 26.322084 -83.485680 96.136017 0.000000 0.000000 -0.000000 -0.000000 0.000001 -0.000000
$definebone "rat_l_forearm" "" 0.948001 -1.812110 3.800520 80.941750 76.557472 -88.505363 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "rat_l_paw" "" 0.762237 -2.359330 0.503161 0.000000 -90.000206 90.000206 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "rat_l_pawtoe_broke" "" 0.762238 -2.717550 0.503160 0.000000 -90.000206 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "rat_l_pawtoe" "rat_l_pawtoe_broke" 0.000000 0.000132 -0.000129 0.020900 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "rat_l_radius" "" 1.857110 5.818000 1.944120 62.297131 86.601997 -87.159485 0.000000 0.000000 0.000000 0.000000 0.000002 0.000000
$definebone "rat_l_toes_broke" "" 1.996720 5.476220 0.379739 -11.399798 94.897285 -95.608894 0.000000 0.000000 0.000000 -0.000000 -0.000001 0.000000
$definebone "rat_l_toes" "rat_l_toes_broke" 0.000000 0.000000 0.000000 -0.000000 179.999863 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "rat_l_ulna" "" 1.002560 -1.583850 2.328460 66.020790 -107.218163 87.053490 0.000000 0.000000 0.000000 0.000001 -0.000002 0.000001
$definebone "rat_tail001" "" 0.000000 7.101220 3.067550 24.010771 90.000206 -90.000206 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000
/*
$collisionjoints horatio_phys {

	$mass 10.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 0.20
	$rootbone "rat_hip"

	$jointconstrain "rat_tail001" x limit -30.00 30.00 0.10
	$jointconstrain "rat_tail001" y limit -30.00 30.00 0.10
	$jointconstrain "rat_tail001" z limit -30.00 30.00 0.10

	$jointconstrain "rat_tail002" x limit -30.00 30.00 0.10
	$jointconstrain "rat_tail002" y limit -30.00 30.00 0.10
	$jointconstrain "rat_tail002" z limit -30.00 30.00 0.10

	$jointconstrain "rat_tail003" x limit -30.00 30.00 0.10
	$jointconstrain "rat_tail003" y limit -30.00 30.00 0.10
	$jointconstrain "rat_tail003" z limit -30.00 30.00 0.10

	$jointconstrain "rat_tail004" x limit -30.00 30.00 0.10
	$jointconstrain "rat_tail004" y limit -30.00 30.00 0.10
	$jointconstrain "rat_tail004" z limit -30.00 30.00 0.10

	
	$jointconstrain "rat_r_femur" x limit -30.00 30.00 0.10
	$jointconstrain "rat_r_femur" y limit -30.00 30.00 0.10
	$jointconstrain "rat_r_femur" z limit -30.00 30.00 0.10

	$jointconstrain "rat_l_femur" x limit -30.00 30.00 0.10
	$jointconstrain "rat_l_femur" y limit -30.00 30.00 0.10
	$jointconstrain "rat_l_femur" z limit -30.00 30.00 0.10
	
	$jointconstrain "rat_r_radius" x limit -30.00 30.00 0.10
	$jointconstrain "rat_r_radius" y limit -30.00 30.00 0.10
	$jointconstrain "rat_r_radius" z limit -30.00 30.00 0.10

	$jointconstrain "rat_l_radius" x limit -30.00 30.00 0.10
	$jointconstrain "rat_l_radius" y limit -30.00 30.00 0.10
	$jointconstrain "rat_l_radius" z limit -30.00 30.00 0.10
	
	$jointconstrain "rat_r_foot" x limit -30.00 30.00 0.10
	$jointconstrain "rat_r_foot" y limit -30.00 30.00 0.10
	$jointconstrain "rat_r_foot" z limit -30.00 30.00 0.10

	$jointconstrain "rat_l_foot" x limit -30.00 30.00 0.10
	$jointconstrain "rat_l_foot" y limit -30.00 30.00 0.10
	$jointconstrain "rat_l_foot" z limit -30.00 30.00 0.10	
	
	$jointconstrain "rat_spine" x limit -30.00 30.00 0.10
	$jointconstrain "rat_spine" y limit -30.00 30.00 0.10
	$jointconstrain "rat_spine" z limit -30.00 30.00 0.10
	
	$jointconstrain "rat_neck" x limit -30.00 30.00 0.10
	$jointconstrain "rat_neck" y limit -30.00 30.00 0.10
	$jointconstrain "rat_neck" z limit -30.00 30.00 0.10

	$jointconstrain "rat_face" x limit -30.00 30.00 0.10
	$jointconstrain "rat_face" y limit -30.00 30.00 0.10
	$jointconstrain "rat_face" z limit -30.00 30.00 0.10

	$jointconstrain "rat_nose" x limit -30.00 30.00 0.10
	$jointconstrain "rat_nose" y limit -30.00 30.00 0.10
	$jointconstrain "rat_nose" z limit -30.00 30.00 0.10
	
	$jointconstrain "rat_r_forearm" x limit -30.00 30.00 0.10
	$jointconstrain "rat_r_forearm" y limit -30.00 30.00 0.10
	$jointconstrain "rat_r_forearm" z limit -30.00 30.00 0.10

	$jointconstrain "rat_l_forearm" x limit -30.00 30.00 0.10
	$jointconstrain "rat_l_forearm" y limit -30.00 30.00 0.10
	$jointconstrain "rat_l_forearm" z limit -30.00 30.00 0.10
	
	$jointconstrain "rat_r_ulna" x limit 0.00 25.00 80.00
	$jointconstrain "rat_r_ulna" y limit -30.00 30.00 0.10
	$jointconstrain "rat_r_ulna" z limit -30.00 30.00 0.10

	$jointconstrain "rat_l_ulna" x limit 0.00 25.00 80.00
	$jointconstrain "rat_l_ulna" y limit -30.00 30.00 0.10
	$jointconstrain "rat_l_ulna" z limit -30.00 30.00 0.10	
	
	$jointconstrain "rat_r_toes" x limit -30.00 30.00 0.10
	$jointconstrain "rat_r_toes" y limit -30.00 30.00 0.10
	$jointconstrain "rat_r_toes" z limit -30.00 30.00 0.10

	$jointconstrain "rat_l_toes" x limit -30.00 30.00 0.10
	$jointconstrain "rat_l_toes" y limit -30.00 30.00 0.10
	$jointconstrain "rat_l_toes" z limit -30.00 30.00 0.10

	$jointconstrain "rat_r_paw" x limit -30.00 30.00 0.10
	$jointconstrain "rat_r_paw" y limit -30.00 30.00 0.10
	$jointconstrain "rat_r_paw" z limit -30.00 30.00 0.10

	$jointconstrain "rat_l_paw" x limit -30.00 30.00 0.10
	$jointconstrain "rat_l_paw" y limit -30.00 30.00 0.10
	$jointconstrain "rat_l_paw" z limit -30.00 30.00 0.10
	
}
*/
/*
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
*/