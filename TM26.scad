//Spaceship();
Moon();

module Moon() {
    translate([0, 0, -10/2])
    cube([56, 56, 10], center=true);
    
    for(i=[0:90:270])
        rotate(a=i, v=[0, 0, 1])
            translate([56/2, 56/2, 0])
                cylinder(r=2.5, h=56, $fn=20);
    
    translate([0, 0, 56])
    difference()
    {
        sphere(r=56/2*sqrt(2)+2.5, $fn=200);
        sphere(r=56/2*sqrt(2)-2.5, $fn=200);
        translate([0, 0, 56/2*sqrt(2)+5])
        cube(56*sqrt(2)+5, center=true);
    }
}

module Spaceship() {
    translate([0, 0, -10/2])
    cube([56, 56, 10], center=true);
    
    rotate(a=45, v=[0, 0, 1])
        cylinder(r1=56/sqrt(2), r2=10, h=100, $fn=4);
}