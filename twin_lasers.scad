$fn=64;

plate_debth = 2.8;
plate_len = 120;
plate_width = 33;

rib(rib_debth = 3);

module rib(rib_debth){
    difference(){
        //scale([1,1,2])
        plate();
        translate([0,0,0])
        cube([plate_width-rib_debth,plate_len,plate_debth+1], center = true);
        
        color("red")
        translate([0,-plate_len/2,0])
        cylinder(h=plate_debth+1, d=plate_width-rib_debth, center = true );
        
        color("green")
        translate([0,plate_len/2,0])
        cylinder(h=plate_debth+1, d=plate_width-rib_debth, center = true );
    }
}
module plate(){
    difference(){
        base();
        holes();
    } 
}

module holes(){
    translate([0,-plate_len/2,0])
    cylinder(h = 40, d=6.5, center = true);
    
    translate([0,plate_len/2,0])
    cylinder(h = 40, d=6.5, center = true);
}

module base(){
    cube([plate_width,plate_len,plate_debth], center = true);
    color("red")
    translate([0,-plate_len/2,0])
    cylinder(h=plate_debth, d=plate_width, center = true );
    color("green")
    translate([0,plate_len/2,0])
    cylinder(h=plate_debth, d=plate_width, center = true );
}