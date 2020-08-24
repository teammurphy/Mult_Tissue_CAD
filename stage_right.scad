// Multi_Tissue_Recording Stage v1
// Jack F. Murphy <me@jackmurphy.nyc>
// https://github.com/teammurphy/Multi_Tissue_CAD

// Smoothness
$fn = 30;

// Stage Dimensions
stage_len=210;
stage_width=155;
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
    
  translate([0, -4, 5]) 
    cube([stage_len-4, stage_width-45, stage_thickness], center=true);
  
  translate([0, 6, 5])
    cylinder(d=130, h=stage_thickness, center=true);  
  // Circular Gap
  translate([0, 0, 0])
    cylinder(d=hole_diam, h=stage_thickness, center=true);

  // Rectangular Gap
  cube([hole_width, hole_len, stage_thickness], center=true);


  translate([85, 60, 0]) {
    cylinder(d=lin_bearing, h=stage_thickness, center=true);
    pilot_holes(12);
  }
  // Cut out left side
  translate([-stage_len/4, 0, 0])
    cube([stage_len/2, stage_width, stage_thickness], center=true); 
}

difference(){
    translate([0, 0, -stage_thickness/2])
        cube([10, stage_width, 2*stage_thickness], center=true);
     cube([hole_width, hole_len, 3*stage_thickness], center=true);
}

// Create 4 pilot holes evenly spaced around the hole.
module pilot_holes(radius){
  translate([radius, 0, 0])
    cylinder(d=pilot_rad, h=stage_thickness, center=true);
  translate([-1*radius, 0, 0])
    cylinder(d=pilot_rad, h=stage_thickness, center=true);
  translate([0, radius, 0])
    cylinder(d=pilot_rad, h=stage_thickness, center=true);
  translate([0, -1*radius, 0])
    cylinder(d=pilot_rad, h=stage_thickness, center=true);
}
