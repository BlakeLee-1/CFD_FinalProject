// Gmsh project created on Sat Apr 22 20:23:42 2023
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 1, 0, 1.0};
Point(2) = {1, 1, 0, 1.0};
Point(3) = {2, 1.0, 0, 1.0};
Point(4) = {3, 1.0, 0, 1.0};
Point(5) = {4, 1.0, 0, 1.0};
Point(6) = {5, .75, 0, 1.0};
Point(7) = {6, .5, 0, 1.0};
Point(8) = {7, .5, 0, 1.0};
Point(9) = {8, .5, 0, 1.0};
Point(10) = {9, .75, 0, 1.0};
Point(11) = {10, 1, 0, 1.0};
Point(12) = {11, 1, 0, 1.0};
Point(13) = {12, 1, 0, 1.0};
Point(14) = {13, 1, 0, 1.0};
Point(15) = {14, 1, 0, 1.0};

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

Point(16) = {0, -1, 0, 1.0};
Point(17) = {1, -1, 0, 1.0};
Point(18) = {2, -1.0, 0, 1.0};
Point(19) = {3, -1.0, 0, 1.0};
Point(20) = {4, -1.0, 0, 1.0};
Point(21) = {5, -.75, 0, 1.0};
Point(22) = {6, -.5, 0, 1.0};
Point(23) = {7, -.5, 0, 1.0};
Point(24) = {8, -.5, 0, 1.0};
Point(25) = {9, -.75, 0, 1.0};
Point(26) = {10, -1, 0, 1.0};
Point(27) = {11, -1, 0, 1.0};
Point(28) = {12, -1, 0, 1.0};
Point(29) = {13, -1, 0, 1.0};
Point(30) = {14, -1, 0, 1.0};

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

Cylinder(1) = {0, 0, 0, 4, 0, 0, 1, 2*Pi};
Cylinder(2) = {14, 0, 0, -4, 0, 0, 1, 2*Pi};
Cylinder(3) = {6, 0, 0, 2, 0, 0, .5, 2*Pi};

Point(37) = {14, 0, 1, 1.0};
Point(38) = {10, 0, 1, 1.0};
Point(39) = {0, 0, -1, 1.0};
Point(40) = {4, 0, -1, 1.0};
Point(41) = {6, 0, -.5, 1.0};
Point(42) = {8, 0, -.5, 1.0};

Line(38) = {37, 38};
Line(39) = {38, 35};
Line(40) = {36, 31};
Line(41) = {33, 42};
Line(42) = {39, 40};
Line(43) = {40, 41};
Line(44) = {41, 42};

Cone(5) = {4, 0, 0, 2, 0, 0, 1, .5, 2*Pi};
Cone(6) = {10, 0, 0, -2, 0, 0, 1, .5, 2*Pi};

Recombine Surface {6, 4, 5, 13, 8, 7, 9, 10, 2, 1, 3};
