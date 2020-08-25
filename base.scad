// Multi_Tissue_Recording Base v3
// Jack F. Murphy <me@jackmurphy.nyc>
// https://github.com/teammurphy/Multi_Tissue_CAD

// Smoothness
$fn = 30;

// Stage Dimensions
stage_len=140;
stage_width=125;
stage_thickness=10;

// Hole Dimensions
rod=8;

difference(){
  translate([5, 4, 0])  
    cube([stage_len, stage_width, stage_thickness], center=true);
    

  // Threaded Hole
  translate([-40, 54, 2]){
    cube([43, 43, stage_thickness], center=true);
  }

  // Linear Bearing Holes
  translate([-60, -54, 2]) {
    cylinder(d=rod, h=stage_thickness, center=true);

  }
  translate([35, 54, 2]) { 
    cylinder(d=rod, h=stage_thickness, center=true);
  }
}

// Creates Insert for Pi to Stand Against
#translate([35, -(stage_width/2)+30, 5])
  cube([5, 70, 50]);

// Creates Insert for Motor Control to stand against
translate([-20, -(stage_width/2)+30, 5])
  cube([60, 5, 50]);
