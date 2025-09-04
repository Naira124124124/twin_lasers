$fn=64;

plate_debth = 2.8;
plate_len = 120;
plate_width = 33;

difference(){
    scale([1,1,2])
    plate();
    translate([0,0,-2.8])
    cube([plate_width-4,plate_len,plate_debth], center = true);
    
    color("red")
    translate([0,-plate_len/2,-plate_debth])
    cylinder(h=plate_debth, d=plate_width-4, center = true );
    
    color("green")
    translate([0,plate_len/2,-plate_debth])
    cylinder(h=plate_debth, d=plate_width-4, center = true );
//    translate([0,0,-2.8])
//    scale([0.9,0.9,2])
//    plate();
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