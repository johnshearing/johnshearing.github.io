// Coil parameters
outer_radius = 20;
wire_radius = 0.5;
turns = 10;
coil_radius = 1.5;
outer_core_radius = 5.5; // Radius of the whole torus
inner_core_radius = .5; // Radius of the cross-section
$fn = 15;

// Function to create a single coil
module create_coil() {
    for (t = [0:360*turns]) {
        rotate([0, 0, t])
        translate([outer_radius + coil_radius * cos(t/turns), 0, coil_radius * sin(t/turns)])
        sphere(r = wire_radius);
    }
}


// Create the 6 coils
difference() {
    union() {
        create_coil();
        rotate([-63.43, 0, 18]) create_coil();
        rotate([63.43, 0, -18]) create_coil();
        rotate([-63.43, 0, -54]) create_coil();
        rotate([63.43, 0, 54]) create_coil();
        rotate([-63.43, 0, 90]) create_coil();
        
        // Add cylinders through the pentagonal openings
        color ("grey") cylinder(h = 2 * outer_radius + 30, d = 1, center = true);
        color ("green") rotate([-63.43, 0, 18]) cylinder(h = 2 * outer_radius + 30, d = 1, center = true);
        color ("blue") rotate([63.43, 0, -18]) cylinder(h = 2 * outer_radius + 30, d = 1, center = true);
        color ("red") rotate([-63.43, 0, -54]) cylinder(h = 2 * outer_radius + 30, d = 1, center = true);
        color ("orange") rotate([63.43, 0, 54]) cylinder(h = 2 * outer_radius + 80, d = 1, center = true);
        color ("aqua") rotate([-63.43, 0, 90]) cylinder(h = 2 * outer_radius + 30, d = 1, center = true);
    }
    sphere(d = 5);
}


// Create the original torus
rotate_extrude(convexity = 10)
    translate([outer_core_radius, 0, 0])
        circle(r = inner_core_radius);

// Create a copy of the torus and rotate it
    rotate([-63.435, 0, 18])
        rotate_extrude(convexity = 10)
            translate([outer_core_radius, 0, 0])
                circle(r = inner_core_radius);
                             
// Create a copy of the torus and rotate it
    rotate([63.435, 0, -18])
        rotate_extrude(convexity = 10)
            translate([outer_core_radius, 0, 0])
                circle(r = inner_core_radius);    
                
// Create a copy of the torus and rotate it
    rotate([-63.435, 0, -54])
        rotate_extrude(convexity = 10)
            translate([outer_core_radius, 0, 0])
                circle(r = inner_core_radius);
                
// Create a copy of the torus and rotate it
    rotate([63.435, 0, 54])
        rotate_extrude(convexity = 10)
            translate([outer_core_radius, 0, 0])
                circle(r = inner_core_radius);                
                
// Create a copy of the torus and rotate it
    rotate([-63.435, 0, 90])
        rotate_extrude(convexity = 10)
            translate([outer_core_radius, 0, 0])
                circle(r = inner_core_radius); 



