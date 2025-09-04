$fn=64;

plate_debth = 2.8;
plate_len = 120;
plate_width = 33;

base();
cylinder(h = 40, d=6.5, center = true);
module base(){
    cube([plate_width,plate_len,plate_debth], center = true);
    color("red")
    translate([0,-plate_len/2,0])
    cylinder(h=plate_debth, d=plate_width, center = true );
    color("green")
    translate([0,plate_len/2,0])
    cylinder(h=plate_debth, d=plate_width, center = true );
}