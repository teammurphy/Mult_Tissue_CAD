
*translate([0, 0, 150]) import("stl/cap.stl");
translate([0, 0, $t*10+80]) import("stl/stage.stl");
import("stl/base.stl");


// Altoids Tin | Motor Controller
color("red") translate([15, -95, 5]) cube([45, 85, 60]);

// Raspberry Pi
color("blue") translate([70, -95, 5]) cube([25, 85, 60]);

// Stepper Motor
color("black") translate([-10, -65, 20]) cube([41, 41, 41], center=true);

// 100mm Petri Dish
#color("orange") translate([0, 0, $t*10+95]) cylinder(d=100, h=20, center=true);

// 6 well dish
*#color("orange") translate([0, 0, $t*10+95]) cube([130, 85, 25], center=true);

// Camera Module
color("green") rotate([0, 0, 50]) translate([-10, 3, 20]) cube([65, 40, 40], center=true);

color("grey") {
    // Threaded ACME Rod
    translate([-10, -65, 0]) cylinder(d=8, h=150);

    // Two Smooth Rods
    translate([-85, 60, 0]) cylinder(d=8, h=150);
    translate([85, 60, 0]) cylinder(d=8, h=150);
}

