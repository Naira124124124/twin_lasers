include <plate_twin_lasers.scad>
include <rib.scad>

rib_height_new = 4;

plate(plate_debth_new);
translate([0,0,-plate_debth_new/2 - rib_height_new/2])
rib(rib_debth = 3,rib_height = rib_height_new);
rib_center(rib_debth = 3,rib_height = rib_height_new);