#include "shapes.inc"
#include "colors.inc"
#include "textures.inc"

// Eine rote Kugel
sphere {
	<0, 0, 0>, 1
	texture {
		pigment {color Red}
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

// jetzt fehlt noch der Himmel
sky_sphere {
	pigment { gradient y
	color_map {
		[0.2 color LightSteelBlue]
		[1.0 color Blue]
	}
	}
}