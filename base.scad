// Multi_Tissue_Recording Base v1
// Jack F. Murphy <me@jackmurphy.nyc>
// https://github.com/teammurphy/Multi_Tissue_CAD

// Smoothness
$fn = 30;

// Stage Dimensions
stage_len=210;
stage_width=160;
stage_thickness=10;

// Hole Dimensions
rod=8;


difference() {
  cube([stage_len, stage_width, stage_thickness], center=true);

  // Rod Holes
  translate([85, 60, -3])
    cylinder(d=rod, h=stage_thickness);
  translate([-85, 60, -3])
    cylinder(d=rod, h=stage_thickness);
}

// Creates Insert for Pi to Stand Against
translate([60, -80, 5])
  cube([10, 110, 60]);
