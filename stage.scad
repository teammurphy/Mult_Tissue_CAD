$fn = 30;

// stage dimensions
stage_len=210;
stage_width=160;
stage_thickness=10;

// hole dimensions
hole_diam=50;
hole_len=85;
hole_width=30;
lin_bearing=15;
threaded=10;
pilot_rad=1;

difference(){
  cube([stage_len, stage_width, stage_thickness], center=true);
  translate([0, 25, 0])
    cylinder(d=hole_diam, h=stage_thickness, center=true);
  cube([hole_width, hole_len, stage_thickness], center=true);
  // threaded hole
  translate([-10, -65, 0]){
    cylinder(d=threaded, h=stage_thickness, center=true);
    pilot_holes(8.5);
  }

  // linear bearing holes
  translate([-85, 60, 0]) {
    cylinder(d=lin_bearing, h=stage_thickness, center=true);
    pilot_holes(12);
  }
  translate([85, 60, 0]) {
    cylinder(d=lin_bearing, h=stage_thickness, center=true);
    pilot_holes(12);
  }
}

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
