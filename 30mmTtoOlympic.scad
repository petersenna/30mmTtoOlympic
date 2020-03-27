/* Screw:
 *  - 29.65 mm external diameter
 * Thread:
 *  - 6.5 mm pitch
 *  - 3.5 mm wide
 *  - 1.5 mm deep
 * Olympic bar weight handler:
 *  - 49.4 mm - 49.56 mm diameter
 *  - 431.79 mm length
 *  - 41.27 mm stopper length
 */
 
 $fn = 128;
 
 h=200; //431.79 total
 /*
 difference() {
     union() {
        cylinder(d=49.4, h=h, center=true);
        translate([0,0,-(h-41.27)/2]) cylinder(d=74.1, h=41.27, center=true);
     }
     cylinder(d=30, h=h+1, center=true);
 }
 
 */
 difference() {
    cylinder(d=33,h=20,center=true);
    cylinder(d=30,h=21,center=true);
 }
 for (z = [-6:6.5:8]) {
    translate([0,15,-z]) rotate([0,85,0]) cylinder(d=3,h=3,center=true, $fn=128);
 }