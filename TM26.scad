//Spaceship();
Moon();
SpaceStation();

m1=56.5;
m2=65;
m3=52.8;

module SpaceStation() {
    High=10;
    Thickness=5;
    
    difference() {
        translate([0, 0, -High/2])
        cube([m1+Thickness, m1+Thickness, High], center=true);
        
        intersection (){
            translate([0, 0, -High])
            cylinder(r1=m2/sqrt(2), r2=m2/sqrt(2), h=High, $fn=4);
            
            translate([0, 0, -High/2])
            cube([m1, m1, High], center=true);
        }
    }
}

module Moon() {
    SpaceStation();
    
    for(i=[0:90:270])
        rotate(a=i, v=[0, 0, 1])
            translate([m1/2, m1/2, 0])
                cylinder(r=2.5, h=m1, $fn=20);
    
    translate([0, 0, m1])
    difference()
    {
        sphere(r=m1/2*sqrt(2)+2.5, $fn=200);
        sphere(r=m1/2*sqrt(2)-2.5, $fn=200);
        translate([0, 0, m1/2*sqrt(2)+5])
        cube(m1*sqrt(2)+5, center=true);
    }
}

module Spaceship() {
    SpaceStation();
    
    rotate(a=45, v=[0, 0, 1])
        cylinder(r1=m1/sqrt(2), r2=10, h=100, $fn=4);
}