$fn=64;

plate_debth_new = 2.8;
plate_len = 120;
plate_width = 33;

rib(rib_debth = 3,rib_height = 5.5);

module rib(rib_debth,rib_height){
    difference(){
        //scale([1,1,rib_height])
        plate(plate_debth=rib_height);
        translate([0,0,0])
        //scale([1,1,rib_height])
        cube([plate_width-rib_debth,plate_len,rib_height+1], center = true);
        
        color("red")
        translate([0,-plate_len/2,0])
        //scale([1,1,rib_height])
        cylinder(h=rib_height+1, d=plate_width-rib_debth, center = true );
        
        color("green")
        translate([0,plate_len/2,0])
        //scale([1,1,rib_height])
        cylinder(h=rib_height+1, d=plate_width-rib_debth, center = true );
    }
}
module plate(plate_debth){
    difference(){
        base(plate_debth);
        holes();
    } 
}

module holes(){
    translate([0,-plate_len/2,0])
    cylinder(h = 40, d=6.5, center = true);
    
    translate([0,plate_len/2,0])
    cylinder(h = 40, d=6.5, center = true);
}

module base(plate_debth){
    cube([plate_width,plate_len,plate_debth], center = true);
    color("red")
    translate([0,-plate_len/2,0])
    cylinder(h=plate_debth, d=plate_width, center = true );
    color("green")
    translate([0,plate_len/2,0])
    cylinder(h=plate_debth, d=plate_width, center = true );
}