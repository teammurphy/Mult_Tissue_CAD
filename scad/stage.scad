// Multi_Tissue_Recording Stage v0.3
// Jack F. Murphy <me@jackmurphy.nyc>
// https://github.com/teammurphy/Multi_Tissue_CAD

// Smoothness
$fn = 30;

// Stage Dimensions
stage_len=140;
stage_width=125;
stage_thickness=10;

// Hole Dimensions
hole_diam=50;
hole_len=85;
hole_width=35;
lin_bearing=15;
threaded=10;
pilot_rad=2;

difference(){
  translate([0, 0, 0])  
    cube([stage_len, stage_width, stage_thickness], center=true);
    
  // Create lower level
  translate([0, 0, 5]) 
    cube([stage_len, 90, stage_thickness], center=true);
  
  translate([0, 0, 5])
    cylinder(d=110, h=stage_thickness, center=true);
    
  // Circular Gap
  translate([0, 0, 0])
    cylinder(d=hole_diam, h=stage_thickness, center=true);

  // Rectangular Gap
  translate([0, 0, 0])  
    cube([hole_width, hole_len, stage_thickness], center=true);

  // Threaded Hole
  translate([-40, 54, 0]){
    cylinder(d=threaded, h=stage_thickness, center=true);
    pilot_holes(8.5);
  }

  // Linear Bearing Holes
  translate([-60, -54, 0]) {
    cylinder(d=lin_bearing, h=stage_thickness, center=true);
    pilot_holes(12);
    translate([0, 12, 0])
        cylinder(d=pilot_rad, h=stage_thickness, center=true);
  }
  translate([35, 54, 0]) {
    cylinder(d=lin_bearing, h=stage_thickness, center=true);
    pilot_holes(12);
  }

}

// Create 2
module pilot_holes(radius){
  translate([radius, 0, 0])
    cylinder(d=pilot_rad, h=stage_thickness, center=true);
  translate([-1*radius, 0, 0])
    cylinder(d=pilot_rad, h=stage_thickness, center=true);
}
