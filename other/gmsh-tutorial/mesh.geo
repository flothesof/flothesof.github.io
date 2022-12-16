SetFactory("OpenCASCADE");

General.BackgroundImageFileName = "background_image.jpg";
//General.BackgroundImageFileName = "";
General.BackgroundImage3D = 0; // 2D bg image (if set to 1, will draw in 3D model coordinates)
General.BackgroundImagePositionX = 1e5; // centered
General.BackgroundImagePositionY = 1e5; // centered
General.BackgroundImageWidth = 0; // don’t stretch
General.BackgroundImageHeight = 0; // don’t stretch//+

image_width = 768;
image_height = 1024;

// border points
Point(1) = {-image_width/2., -image_height/2., 0, 1.0};
Point(2) = {image_width/2., -image_height/2., 0, 1.0};
Point(3) = {image_width/2., image_height/2., 0, 1.0};
Point(4) = {-image_width/2., image_height/2., 0, 1.0};

// outer contour
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};

Point(5) = {-308.49, -418.73, 0, 1.0};
Point(6) = {-303.47, -102.7, 0, 1.0};
Point(7) = {-292.44, -45.51, 0, 1.0};
Point(8) = {-292.44, 5.66, 0, 1.0};
Point(9) = {-296.45, 124.05, 0, 1.0};
Point(10) = {-276.38, 125.05, 0, 1.0};
Point(11) = {-280.4, 317.68, 0, 1.0};
Point(12) = {-267.35, 379.89, 0, 1.0};
Point(13) = {-86.76, 376.88, 0, 1.0};
Point(14) = {-65.69, 319.69, 0, 1.0};
Point(15) = {-63.69, 144.11, 0, 1.0};
Point(16) = {62.73, 141.1, 0, 1.0};
Point(17) = {66.74, 359.82, 0, 1.0};
Point(18) = {89.82, 389.92, 0, 1.0};
Point(19) = {246.33, 385.91, 0, 1.0};
Point(20) = {268.4, 308.65, 0, 1.0};
Point(21) = {264.39, 143.11, 0, 1.0};
Point(22) = {277.43, 139.1, 0, 1.0};
Point(23) = {279.44, -82.63, 0, 1.0};
Point(24) = {294.49, -411.71, 0, 1.0};

Line(5) = {5, 6};
Line(6) = {6, 7};
Line(7) = {7, 8};
Line(8) = {8, 9};
Line(9) = {9, 10};
Line(10) = {10, 11};
Line(11) = {11, 12};
Line(12) = {12, 13};
Line(14) = {13, 14};
Line(15) = {14, 15};
Line(16) = {15, 16};
Line(17) = {16, 17};
Line(18) = {17, 18};
Line(19) = {18, 19};
Line(20) = {19, 20};
Line(21) = {20, 21};
Line(22) = {21, 22};
Line(23) = {22, 23};
Line(24) = {23, 24};
Line(25) = {24, 5};

Curve Loop(1) = {7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 5, 6};

// Window
Point(25) = {-60.68, 22.71, 0, 1.0};
Point(26) = {56.71, 20.71, 0, 1.0};
Point(27) = {56.71, 112.01, 0, 1.0};
Point(28) = {-59.67, 112.01, 0, 1.0};
Line(26) = {25, 26};
Line(27) = {26, 27};
Line(28) = {27, 28};
Line(29) = {28, 25};
Curve Loop(2) = {29, 26, 27, 28};

// Circle
Circle(30) = {-0.48, -79.62, 0, 60, 0, 2*Pi};
Curve Loop(3) = {30};


// surface to mesh
//+
Plane Surface(1) = {1, 2, 3};
//+
Point(30) = {106.94, -150.17, 0, 1.0};
//+
Point(31) = {216.62, -152.14, 0, 1.0};
//+
Point(32) = {157.34, -17.77, 0, 1.0};
//+
Point(33) = {105.44, -80.37, 0, 1.0};
