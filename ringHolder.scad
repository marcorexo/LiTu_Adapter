$fn=60;

//diameter of the ball bearing: ca 33mm
//diameter of the tube:
//min: ca 44mm  max: 49mm
difference(){
	union(){
		difference(){
			cylinder(5, 29, 29);
			translate([0, 0, -1])
			cylinder(7, 19.5, 19.5);
		}
		
	
		for(i=[0:5]){
			rotate( i * 360 / 6, [0, 0, 1])
			translate([0, 22, 0])
			cylinder(5, 5, 5); //LED outer ring
		 }
	}

	//distance from center: 23.75
	//diameter: 3mm (23.75 +-1.5mm)
	for(i=[0:5]){
		rotate( i * 360 / 6, [0, 0, 1])
		translate([0, 23.75, -1])
		cylinder(8, 1.5, 1.5);  //LED's
	}
}

translate([0 ,0, 3])
difference(){
	difference(){
		cylinder(5, 29, 29);
		translate([0, 0, -1])
		cylinder(7, 19.75, 19,75);
	}
	
	translate([0, 0, 1])
	difference(){
		cylinder(8, 25.75, 25,75);
		cylinder(10, 22.75, 22,75);
	}
}
