// Multi_Tissue_Recording Cap v1
// Jack F. Murphy <me@jackmurphy.nyc>
// https://github.com/teammurphy/Multi_Tissue_CAD

// Smoothness
$fn = 30;

// Stage Dimensions
stage_len=210;
stage_width=170;
stage_thickness=8;

// Rod Diameters
rod=8;

difference() {
    translate([0, -10, 0])
        cube([stage_len, stage_width, stage_thickness], center=true);
    translate([-10, -65, (stage_thickness/2)*-1])
        cylinder(d=rod, h=stage_thickness-2);
    translate([-85, 60, (stage_thickness/2)*-1])
        cylinder(d=rod, h=stage_thickness-2);
    translate([85, 60, (stage_thickness/2)*-1])
        cylinder(d=rod, h=stage_thickness-2);
}

