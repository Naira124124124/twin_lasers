$fn=64;
plate_debth = 5
cube([40,70,plate_debth], center = true);
color("red")
translate([0,-70/2,0])
cylinder(h=plate_debth, d=40, center = true );
color("green")
translate([0,70/2,0])
cylinder(h=plate_debth, d=40, center = true );