$fn = 128;

difference() {
    //cylinder(r=105, h=20, center=true);
    cylinder(r=42, h=20, center=true);

    cylinder(r=65/2, h=20);

    rotate([-4,0,0])
    translate([0,0,-3]) {
        cylinder(r=50/2, h=15);

        translate([-25/2,0,0])
            cube([50/2,100,10]);
    }
}
