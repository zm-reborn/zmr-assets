
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
// reversed opposite direction animation + phase shift
$animation walk_SW "anims/walk_sw_r" LX LY LZ startloop 9 fps 120
$animation walk_W "anims/walk_w_r" LX LY LZ startloop 9 fps 120
$animation walk_NW "anims/walk_nw_r" LX LY LZ startloop 9 fps 120

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