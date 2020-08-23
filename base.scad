$fn = 30;

// stage dimensions
stage_len=210;
stage_width=160;
stage_thickness=10;

// hole dimensions
rod=8;


difference(){
  cube([stage_len, stage_width, stage_thickness], center=true);
  translate([85, 60, 0])
    cylinder(d=rod, h=stage_thickness, center=true);
  translate([-85, 60, 0])
    cylinder(d=rod, h=stage_thickness, center=true);
}

translate([60, -80, 5])
  cube([10, 110, 60]);
