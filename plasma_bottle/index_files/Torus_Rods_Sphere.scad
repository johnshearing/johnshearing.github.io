// This OpenSCAD file creates the image PlasmaBottleCAD.jpg which is found in this directory.

// Torus parameters
outer_radius = 20;
inner_radius = 1;
$fn = 100;

// Create the original torus
rotate_extrude(convexity = 10)
    translate([outer_radius, 0, 0])
        circle(r = inner_radius);

// Create copies of the torus and rotate them
rotate([-63.43, 0, 18])
    rotate_extrude(convexity = 10)
        translate([outer_radius, 0, 0])
            circle(r = inner_radius);

rotate([63.43, 0, -18])
    rotate_extrude(convexity = 10)
        translate([outer_radius, 0, 0])
            circle(r = inner_radius);

rotate([-63.43, 0, -54])
    rotate_extrude(convexity = 10)
        translate([outer_radius, 0, 0])
            circle(r = inner_radius);

rotate([63.43, 0, 54])
    rotate_extrude(convexity = 10)
        translate([outer_radius, 0, 0])
            circle(r = inner_radius);

rotate([-63.43, 0, 90])
    rotate_extrude(convexity = 10)
        translate([outer_radius, 0, 0])
            circle(r = inner_radius);



// Use difference() to remove material enclosed by a sphere at origin with diameter of 5
difference() {
    union() {
        rotate_extrude(convexity = 10)
            translate([outer_radius, 0, 0])
                circle(r = inner_radius);

        rotate([-63.43, 0, 18])
            rotate_extrude(convexity = 10)
                translate([outer_radius, 0, 0])
                    circle(r = inner_radius);

        rotate([63.43, 0, -18])
            rotate_extrude(convexity = 10)
                translate([outer_radius, 0, 0])
                    circle(r = inner_radius);

        rotate([-63.43, 0, -54])
            rotate_extrude(convexity = 10)
                translate([outer_radius, 0, 0])
                    circle(r = inner_radius);

        rotate([63.43, 0, 54])
            rotate_extrude(convexity = 10)
                translate([outer_radius, 0, 0])
                    circle(r = inner_radius);

        rotate([-63.43, 0, 90])
            rotate_extrude(convexity = 10)
                translate([outer_radius, 0, 0])
                    circle(r = inner_radius);

        cylinder(h = 2 * outer_radius + 10, d = 1, center = true);
        rotate([-63.43, 0, 18]) cylinder(h = 2 * outer_radius + 10, d = 1, center = true);
        rotate([63.43, 0, -18]) cylinder(h = 2 * outer_radius + 10, d = 1, center = true);
        rotate([-63.43, 0, -54]) cylinder(h = 2 * outer_radius + 10, d = 1, center = true);
        rotate([63.43, 0, 54]) cylinder(h = 2 * outer_radius + 10, d = 1, center = true);
        rotate([-63.43, 0, 90]) cylinder(h = 2 * outer_radius + 10, d = 1, center = true);
    }
    sphere(d = 5);
}
