// Eine verbesserte Kugel mit Phong-Glanzpunkt

#include "shapes.inc"
#include "colors.inc"
#include "textures.inc"
#include "himmel.inc"

// Eine rote Kugel
sphere {
	<0, 0, 0>, 1
	texture {
		pigment {color rgb <1, 0, 0>}
		finish {phong .8 phong_size 70}
	}
}

// Eine grüne Fläche

plane {
	<0, 1, 0>, -1
	texture {
		pigment {color Green}
	}
}

// Das Licht
light_source {
	<0, 100, -100>
	color White
}

// Die Kamera
camera {
	location  <0.0, 0.0, -4.0>
	direction <0.0, 0.0, 1.0>
	up        <0.0, 1.0, 0.0>
	right     <1.333, 0.0, 0.0>
	look_at   <0.0, 0.0, 0.0>
}

