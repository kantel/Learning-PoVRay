// Bild 7_32 Warp

#include "shapes.inc"
#include "colors.inc"
#include "textures.inc"
#include "himmel.inc"


// Kugeldefinition
sphere {
	<0, 0, 0>, 1
	scale <2, 2, 2>
	translate <0, 1, 1>
	texture {pigment {
		wood
		color_map {
		[.2 color Brown]
		[.5 color Yellow]
		[.7 color DarkBrown]
		}
		warp{black_hole <2, 1, 0>, 5
		falloff 8
		strength 12}
	}
	}  
}

// Eine Ebene

plane {
	<0, 1, 0>, -1
	texture {pigment {checker pigment {color Green}}}
}


// Das Licht
light_source {
	<0, 100, -100>
	color White
}




// Die Kamera
camera {
	location  <0.0, 0.0, -6.0>
	direction <0.0, 0.0, 1.0>
	up        <0.0, 1.0, 0.0>
	right     <1.333, 0.0, 0.0>
	look_at   <0.0, 0.0, 0.0>
}

