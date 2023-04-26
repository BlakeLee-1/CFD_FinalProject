// Gmsh project created on Sat Apr 22 20:23:42 2023
SetFactory("OpenCASCADE");
//+ Variables
h = 1.0;
l_middle = 2.0;
outside_middle_ratio = 2.0;
taper_length = 2.0;
radius_ratio = 2.0;
inner_radius = 0.5;

//+ Calculated Quantities
oa_length = 2.0*outside_middle_ratio*l_middle + 2.0*taper_length + l_middle;
l_outside = l_middle*outside_middle_ratio;
fractional_separation = oa_length / 14.0;
outer_radius = inner_radius*outside_middle_ratio;


//+
Point(1) = {0, 1.0*outer_radius, 0, h};
Point(2) = {1*fractional_separation, outer_radius, 0, h};
Point(3) = {2*fractional_separation, outer_radius, 0, h};
Point(4) = {3*fractional_separation, outer_radius, 0, h};
Point(5) = {4*fractional_separation, outer_radius, 0, h};
Point(6) = {5*fractional_separation, (outer_radius+inner_radius)/2.0, 0, h};
Point(7) = {6*fractional_separation, inner_radius, 0, h};
Point(8) = {7*fractional_separation, inner_radius, 0, h};
Point(9) = {8*fractional_separation, inner_radius, 0, h};
Point(10) = {9*fractional_separation, (outer_radius+inner_radius)/2.0, 0, h};
Point(11) = {10*fractional_separation, outer_radius, 0, h};
Point(12) = {11*fractional_separation, outer_radius, 0, h};
Point(13) = {12*fractional_separation, outer_radius, 0, h};
Point(14) = {13*fractional_separation, outer_radius, 0, h};
Point(15) = {14*fractional_separation, outer_radius, 0, h};

Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 5};
Line(5) = {5, 6};
Line(6) = {6, 7};
Line(7) = {7, 8};
Line(8) = {8, 9};
Line(9) = {9, 10};
Line(10) = {10, 11};
Line(11) = {11, 12};
Line(12) = {12, 13};
Line(13) = {13, 14};
Line(14) = {14, 15};

//+
Point(16) = {0, -1.0*outer_radius, 0, h};
Point(17) = {1*fractional_separation, -outer_radius, 0, h};
Point(18) = {2*fractional_separation, -outer_radius, 0, h};
Point(19) = {3*fractional_separation, -outer_radius, 0, h};
Point(20) = {4*fractional_separation, -outer_radius, 0, h};
Point(21) = {5*fractional_separation, -(outer_radius+inner_radius)/2.0, 0, h};
Point(22) = {6*fractional_separation, -inner_radius, 0, h};
Point(23) = {7*fractional_separation, -inner_radius, 0, h};
Point(24) = {8*fractional_separation, -inner_radius, 0, h};
Point(25) = {9*fractional_separation, -(outer_radius+inner_radius)/2.0, 0, h};
Point(26) = {10*fractional_separation, -outer_radius, 0, h};
Point(27) = {11*fractional_separation, -outer_radius, 0, h};
Point(28) = {12*fractional_separation, -outer_radius, 0, h};
Point(29) = {13*fractional_separation, -outer_radius, 0, h};
Point(30) = {14*fractional_separation, -outer_radius, 0, h};



Line(15) = {16, 17};
Line(16) = {17, 18};
Line(17) = {18, 19};
Line(18) = {19, 20};
Line(19) = {20, 21};
Line(20) = {21, 22};
Line(21) = {22, 23};
Line(22) = {23, 24};
Line(23) = {24, 25};
Line(24) = {25, 26};
Line(25) = {26, 27};
Line(26) = {27, 28};
Line(27) = {28, 29};
Line(28) = {29, 30};

Cylinder(1) = {0, 0, 0, l_outside, 0, 0, outer_radius, 2*Pi};
Cylinder(2) = {oa_length, 0, 0, -l_outside, 0, 0, outer_radius, 2*Pi};
Cylinder(3) = {l_outside+taper_length, 0, 0, l_middle, 0, 0, inner_radius, 2*Pi};

Point(37) = {oa_length, 0, outer_radius, h};
Point(38) = {oa_length-l_outside, 0, outer_radius, h};
Point(39) = {0, 0, -outer_radius, h};
Point(40) = {l_outside, 0, -outer_radius, h};
Point(41) = {l_outside+taper_length, 0, -inner_radius, h};
Point(42) = {oa_length-l_outside-taper_length, 0, -inner_radius, h};

Line(38) = {37, 38};
Line(39) = {38, 35};
Line(40) = {36, 31};
Line(41) = {33, 42};
Line(42) = {39, 40};
Line(43) = {40, 41};
Line(44) = {41, 42};

Cone(5) = {l_outside, 0, 0, taper_length, 0, 0, outer_radius, inner_radius, 2*Pi};
Cone(6) = {oa_length-l_outside, 0, 0, -taper_length, 0, 0, outer_radius, inner_radius, 2*Pi};

BooleanUnion{ Volume{1}; Delete;}{ Volume{5}; Delete;}
BooleanUnion{ Volume{2}; Delete;}{ Volume{6}; Delete;}
BooleanUnion{ Volume{7}; Delete;}{ Volume{3}; Delete;}
BooleanUnion{ Volume{9}; Delete;}{ Volume{8}; Delete;}

//BooleanUnion(9) = {Volume{ID1}; Volume{ID4}};
//BooleanUnion(10) = {Volume{ID1}; Volume{ID5}};
