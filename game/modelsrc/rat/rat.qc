/*TODO:
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

$animation walk_C_stand "anims/rat_idle_stand" LX LY LZ loop fps 60
$animation walk_C_sit "anims/rat_idle_sit" LX LY LZ loop fps 60

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
	walk_SW   walk_W   walk_NW
	walk_S    walk_C   walk_N
	walk_SE   walk_E   walk_NE

	activity "ACT_MP_WALK" -1
	
	blendwidth 3
 	blend move_x -1 1
 	blend move_y 1 -1

	addlayer look
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
$jigglebone "rat_tail001"
{
	is_flexible
	{
		length 10
		tip_mass 30
		angle_constraint 45
		pitch_stiffness 300
		pitch_damping 4
		yaw_stiffness 400
		yaw_damping 4
		}
}
$jigglebone "rat_tail002"
{
	is_flexible
	{
		length 10
		tip_mass 20
		angle_constraint 60
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
		angle_constraint 60
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
		tip_mass 2
		angle_constraint 60
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

$definebone "rat_hip" "" 0.000000 5.800790 4.654580 -5.441414 -90.000206 90.000206 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "rat_spine" "rat_hip" 3.867210 0.000000 -0.000000 -0.000000 5.394928 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000 0.000000
$definebone "rat_neck" "rat_spine" 3.571132 0.000000 -0.000000 -0.000000 0.888771 -0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "rat_r_forearm" "rat_spine" 3.466521 -1.906440 0.948191 -2.105557 -109.654961 -14.772635 0.000000 0.000000 0.000000 0.000001 0.000000 0.000003
$definebone "rat_r_ulna" "rat_r_forearm" 1.490660 -0.000000 0.000000 0.719444 33.015900 0.749474 -0.000000 0.000000 0.000000 -0.000001 -0.000001 0.000002
$definebone "rat_r_paw" "rat_r_ulna" 1.997710 0.000000 0.000000 -14.541660 66.385757 -1.234634 0.000000 0.000000 0.000000 0.000003 0.000004 -0.000000
$definebone "rat_r_pawtoe" "rat_r_paw" 0.358219 -0.000130 -0.000133 0.021343 -0.020862 -90.000206 0.000000 0.000000 0.000000 -0.000004 0.000003 0.000000
$definebone "rat_face" "rat_neck" 2.116380 -0.000000 0.000000 -0.000000 -16.864840 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "rat_nose" "rat_face" 1.978520 0.000000 0.000000 -0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000 0.000000
$definebone "rat_l_forearm" "rat_spine" 3.466521 -1.906440 -0.948000 1.318989 -109.857780 15.066670 0.000000 0.000000 0.000000 -0.000000 -0.000001 0.000000
$definebone "rat_l_ulna" "rat_l_forearm" 1.490660 0.000000 0.000000 0.719343 33.015480 0.436687 -0.000000 0.000000 0.000000 -0.000001 -0.000002 0.000000
$definebone "rat_l_paw" "rat_l_ulna" 1.997700 -0.000000 0.000000 14.541898 66.358269 1.233102 0.000000 0.000000 0.000000 -0.000000 0.000008 0.000001
$definebone "rat_l_pawtoe" "rat_l_paw" 0.358219 -0.000130 -0.000134 0.645038 -0.258388 -90.917519 0.000000 0.000000 0.000000 -0.000008 -0.000000 -0.000001
$definebone "rat_r_femur" "rat_hip" 0.635818 -1.410480 1.826500 -1.112598 -125.280083 2.126498 -0.000000 0.000000 0.000000 0.000000 -0.000002 0.000000
$definebone "rat_r_radius" "rat_r_femur" 1.575800 -0.000000 0.000000 -0.386649 2.192192 -7.909799 0.000000 0.000000 0.000000 0.000001 -0.000002 0.000001
$definebone "rat_r_foot" "rat_r_radius" 1.248790 -0.000001 0.000000 -10.323497 90.896904 3.733423 0.000000 0.000000 0.000000 0.000001 0.000004 -0.000000
$definebone "rat_r_toes" "rat_r_foot" 1.034550 -0.000000 0.000000 0.000002 14.999978 -0.000000 0.000000 0.000000 0.000000 0.000001 -0.000001 0.000000
$definebone "rat_l_femur" "rat_hip" 0.635815 -1.410480 -1.826500 1.184034 -123.339478 -2.064224 0.000000 0.000000 0.000000 -0.000000 0.000004 0.000000
$definebone "rat_l_radius" "rat_l_femur" 1.575800 0.000000 0.000000 0.385708 -2.199209 -5.813459 0.000000 0.000000 0.000000 -0.000001 0.000003 0.000001
$definebone "rat_l_foot" "rat_l_radius" 1.248791 0.000000 0.000000 -1.978599 93.466599 1.532082 0.000000 0.000000 0.000000 0.000001 -0.000005 -0.000001
$definebone "rat_l_toes" "rat_l_foot" 1.034550 0.000000 0.000000 0.069914 14.999799 -0.259298 0.000000 -0.000000 0.000000 0.000001 -0.000003 -0.000001
// tail bones are jiggle so don't get dedicated wam

$collisionjoints horatio_phys {

	$mass 2
	$inertia 2.50
	$damping 0.15
	$rotdamping 1.0
	$rootbone "rat_hip"

	$jointconstrain "rat_tail001" x limit -60.00 60.00 3.0
	$jointconstrain "rat_tail001" y limit -60.00 60.00 3.0
	$jointconstrain "rat_tail001" z limit -60.00 60.00 3.0

	$jointconstrain "rat_tail002" x limit -60.00 60.00 3.0
	$jointconstrain "rat_tail002" y limit -60.00 60.00 3.0
	$jointconstrain "rat_tail002" z limit -60.00 60.00 3.0

	$jointconstrain "rat_tail003" x limit -60.00 60.00 3.0
	$jointconstrain "rat_tail003" y limit -60.00 60.00 3.0
	$jointconstrain "rat_tail003" z limit -60.00 60.00 3.0

	$jointconstrain "rat_tail004" x limit -60.00 60.00 3.0
	$jointconstrain "rat_tail004" y limit -60.00 60.00 3.0
	$jointconstrain "rat_tail004" z limit -60.00 60.00 3.0

	
	$jointconstrain "rat_r_femur" x limit -60.00 60.00 3.0
	$jointconstrain "rat_r_femur" y limit -60.00 60.00 3.0
	$jointconstrain "rat_r_femur" z limit -60.00 60.00 3.0

	$jointconstrain "rat_l_femur" x limit -60.00 60.00 3.0
	$jointconstrain "rat_l_femur" y limit -60.00 60.00 3.0
	$jointconstrain "rat_l_femur" z limit -60.00 60.00 3.0
	
	$jointconstrain "rat_r_radius" x limit -60.00 60.00 3.0
	$jointconstrain "rat_r_radius" y limit -60.00 60.00 3.0
	$jointconstrain "rat_r_radius" z limit -60.00 60.00 3.0

	$jointconstrain "rat_l_radius" x limit -60.00 60.00 3.0
	$jointconstrain "rat_l_radius" y limit -60.00 60.00 3.0
	$jointconstrain "rat_l_radius" z limit -60.00 60.00 3.0
	
	$jointconstrain "rat_r_foot" x limit -60.00 60.00 3.0
	$jointconstrain "rat_r_foot" y limit -60.00 60.00 3.0
	$jointconstrain "rat_r_foot" z limit -60.00 60.00 3.0

	$jointconstrain "rat_l_foot" x limit -60.00 60.00 3.0
	$jointconstrain "rat_l_foot" y limit -60.00 60.00 3.0
	$jointconstrain "rat_l_foot" z limit -60.00 60.00 3.0	
	
	$jointconstrain "rat_spine" x limit -40.00 40.00 3.0
	$jointconstrain "rat_spine" y limit -40.00 40.00 3.0
	$jointconstrain "rat_spine" z limit -40.00 40.00 3.0
	
	$jointconstrain "rat_neck" x limit -40.00 40.00 3.0
	$jointconstrain "rat_neck" y limit -40.00 40.00 3.0
	$jointconstrain "rat_neck" z limit -40.00 40.00 3.0

	$jointconstrain "rat_face" x limit -30.00 30.00 3.0
	$jointconstrain "rat_face" y limit -30.00 30.00 3.0
	$jointconstrain "rat_face" z limit -30.00 30.00 3.0

	$jointconstrain "rat_nose" x limit -20.00 20.00 3.0
	$jointconstrain "rat_nose" y limit -20.00 20.00 3.0
	$jointconstrain "rat_nose" z limit -20.00 20.00 3.0
	
	$jointconstrain "rat_r_forearm" x limit -60.00 60.00 3.0
	$jointconstrain "rat_r_forearm" y limit -60.00 60.00 3.0
	$jointconstrain "rat_r_forearm" z limit -60.00 60.00 3.0

	$jointconstrain "rat_l_forearm" x limit -60.00 60.00 3.0
	$jointconstrain "rat_l_forearm" y limit -60.00 60.00 3.0
	$jointconstrain "rat_l_forearm" z limit -60.00 60.00 3.0
	
	$jointconstrain "rat_r_ulna" x limit -60.00 60.00 3.0
	$jointconstrain "rat_r_ulna" y limit -60.00 60.00 3.0
	$jointconstrain "rat_r_ulna" z limit -60.00 60.00 3.0

	$jointconstrain "rat_l_ulna" x limit -60.00 60.00 3.0
	$jointconstrain "rat_l_ulna" y limit -60.00 60.00 3.0
	$jointconstrain "rat_l_ulna" z limit -60.00 60.00 3.0	
	
	$jointconstrain "rat_r_toes" x limit -60.00 60.00 3.0
	$jointconstrain "rat_r_toes" y limit -60.00 60.00 3.0
	$jointconstrain "rat_r_toes" z limit -60.00 60.00 3.0

	$jointconstrain "rat_l_toes" x limit -60.00 60.00 3.0
	$jointconstrain "rat_l_toes" y limit -60.00 60.00 3.0
	$jointconstrain "rat_l_toes" z limit -60.00 60.00 3.0

	$jointconstrain "rat_r_paw" x limit -60.00 60.00 3.0
	$jointconstrain "rat_r_paw" y limit -60.00 60.00 3.0
	$jointconstrain "rat_r_paw" z limit -60.00 60.00 3.0

	$jointconstrain "rat_l_paw" x limit -60.00 60.00 3.0
	$jointconstrain "rat_l_paw" y limit -60.00 60.00 3.0
	$jointconstrain "rat_l_paw" z limit -60.00 60.00 3.0

	
	$jointconstrain "rat_r_pawtoe" x limit -60.00 60.00 3.0
	$jointconstrain "rat_r_pawtoe" y limit -60.00 60.00 3.0
	$jointconstrain "rat_r_pawtoe" z limit -60.00 60.00 3.0

	$jointconstrain "rat_l_pawtoe" x limit -60.00 60.00 3.0
	$jointconstrain "rat_l_pawtoe" y limit -60.00 60.00 3.0
	$jointconstrain "rat_l_pawtoe" z limit -60.00 60.00 3.0	
}
