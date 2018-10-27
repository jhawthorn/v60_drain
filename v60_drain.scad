$fn = 128;

module outer() {
    cylinder(r=40, h=20);
}

module drainage() {
    rotate([-5,-2,0])
        translate([-50,-50,-10])
            cube([100,100,15]);

    rotate([-5,2,0])
        translate([-50,-50,-10])
            cube([100,100,15]);

    rotate([-7,0,0])
        translate([-50,-50,-10])
            cube([100,100,15]);
}

module ring() {
    difference() {
        //cylinder(r=105, h=20, center=true);
        outer();

        translate([0,0,-1])
            cylinder(r=65/2, h=22);

    translate([-7,30,-0.1])
        cube([14, 50, 22]);
    }
}

intersection() {
    outer();
    drainage();
}

ring();

