//$cd "C:\ZombieMaster\modelsrc\zm_draggy"
$modelname "humans\zm_draggy.mdl"
$model "body" "charple04_reference.smd"


$texturegroup "skinfamilies"
{
	{ "Charple4_sheet"  }
	{ "Charple4_sheet2" }
	{ "Charple4_sheet3" }
	{ "Charple4_sheet4" }
}

$lod 10
 {
  replacemodel "charple04_reference" "lod1_charple04_reference"
}
$lod 18
 {
  replacemodel "charple04_reference" "lod2_charple04_reference"
}
$lod 35
 {
  replacemodel "charple04_reference" "lod3_charple04_reference"
}
$lod 55
 {
  replacemodel "charple04_reference" "lod4_charple04_reference"
}
$shadowlod
{
  replacemodel "charple04_reference" "lod5_charple04_reference"
}
$cdmaterials "models\charple\"
$hboxset "default"
$hbox 2 "Charple4.Lumbar"	-9.5	-3.24	-7.39	12.5	8.13	6.68
$hbox 5 "Charple4.Humerus_R"	-0.5	-2.5	-2.5	14.5	2.5	2.5
$hbox 4 "Charple4.Humerus_L"	0.5	-2.5	-2.5	15.5	2.5	2.5
$hbox 1 "Charple4.Head"	-3.79	-4.2	-2.93	7.71	5.36	2.93
$hbox 7 "Charple4.Femur_R"	-1	-5	-2.5	17	3	2.5
$hbox 7 "Charple4.Tibia_R"	-1.5	-1.2	-1.22	13.5	2.99	1.03
$hbox 6 "Charple4.Femur_L"	-1	-3.5	-2.5	21	3.5	2.5
// Model uses material "Charple4_sheet.vmt"
$surfaceprop "flesh"
$illumposition 0.000 -8.000 52.000
$eyeposition 0.000 -8.000 52.000

$attachment "eyes" "Charple4.Head" 3.00 4.00 0.00 rotate 0 90 90
$attachment "mouth" "Charple4.Head" 1.00 5.00 0.00 rotate -0 0 0
$sequence ragdoll "ragdoll" ACT_DIERAGDOLL 1 fps 30.00

$sequence idle2 "idle2" loop ACT_IDLE 1 fps 30.00
$sequence walk "Walk" LX loop ACT_WALK 1 fps 45.00

$sequence attack1 "attack1" ACT_MELEE_ATTACK1 1 fps 15.00 {
  { event AE_DRAGGY_SICK 1 }
}


$collisionjoints "phymodel.smd" {

	$mass 23.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "charple4.pelvis"

	$jointconstrain "charple4.femur_r" x limit -15.00 15.00 0.20
	$jointconstrain "charple4.femur_r" y limit -17.00 46.00 0.20
	$jointconstrain "charple4.femur_r" z limit -64.00 66.00 0.20

	$jointconstrain "charple4.tibia_r" x limit 0.00 0.00 0.20
	$jointconstrain "charple4.tibia_r" y limit 0.00 0.00 0.20
	$jointconstrain "charple4.tibia_r" z limit 0.00 115.00 0.20

	$jointconstrain "charple4.lumbar" x limit -23.00 23.00 0.20
	$jointconstrain "charple4.lumbar" y limit -21.00 21.00 0.20
	$jointconstrain "charple4.lumbar" z limit -21.00 37.00 0.20

	$jointconstrain "charple4.spine" x limit -30.00 30.00 0.20
	$jointconstrain "charple4.spine" y limit -28.00 28.00 0.20
	$jointconstrain "charple4.spine" z limit -32.00 28.00 0.20

	$jointconstrain "charple4.humerus_r" x limit -41.00 41.00 0.20
	$jointconstrain "charple4.humerus_r" y limit -84.00 61.00 0.20
	$jointconstrain "charple4.humerus_r" z limit -91.00 21.00 0.20

	$jointconstrain "charple4.head" x limit -39.00 39.00 0.20
	$jointconstrain "charple4.head" y limit -23.00 23.00 0.20
	$jointconstrain "charple4.head" z limit -15.00 35.00 0.20

	$jointconstrain "charple4.humerus_l" x limit -41.00 41.00 0.20
	$jointconstrain "charple4.humerus_l" y limit -61.00 84.00 0.20
	$jointconstrain "charple4.humerus_l" z limit -91.00 21.00 0.20

	$jointconstrain "charple4.femur_l" x limit -15.00 15.00 0.20
	$jointconstrain "charple4.femur_l" y limit -46.00 17.00 0.20
	$jointconstrain "charple4.femur_l" z limit -64.00 66.00 0.20
}
