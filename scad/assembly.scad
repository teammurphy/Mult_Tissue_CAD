
translate([0, 0, $t*10+80]) import("../stl/stage.stl");
*translate([0, 0, 100]) import("../stl/cap.stl");
import("../stl/base.stl");


// Altoids Tin | Motor Controller
color("red") translate([40, 35-(125/2), 5]) cube([45, 95, 60]);

// Raspberry Pi
color("blue") translate([-15, 4-(125/2), 5]) cube([90, 25, 60]);

// Stepper Motor
color("black") translate([-40, 54, 20]) cube([41, 41, 41], center=true);

// 100mm Petri Dish
#color("orange") translate([0, 2, $t*10+90]) cylinder(d=100, h=20, center=true);

// 6 well dish
//#color("orange") translate([$t*40, 0, 110]) cube([130, 85, 25], center=true);

// Camera Module
color("green") rotate([0, 0, 0]) translate([0, 0, 20]) cube([65, 40, 40], center=true);

color("grey") {
    // Threaded ACME Rod
    translate([-40, 54, 0]) cylinder(d=8, h=150);

    // Two Smooth Rods
    translate([-60, -54, 0]) cylinder(d=8, h=150);
    translate([35, 54, 0]) cylinder(d=8, h=150);
}

