$fn = 128;

height=20;

module outer() {
    cylinder(r=40, h=height);
}

module drainage_slope() {
    rotate([0,-7,0])
        translate([-50,-50,-10])
            cube([100,100,15]);
}

module drainage() {
    rotate([-5,0,0]) {
        // round towards center
        for(r = [0 : 15 : 180])
            rotate([0,0,-r])
                drainage_slope();
    }
}

module ring() {
    difference() {
        //cylinder(r=105, h=20, center=true);
        outer();

        translate([0,0,-1])
            cylinder(r=65/2, h=height+2);

    translate([-7,30,-0.1])
        cube([14, 50, height+1]);
    }
}

intersection() {
    outer();
    drainage();
}

ring();

