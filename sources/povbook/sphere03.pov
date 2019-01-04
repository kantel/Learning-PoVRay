// Eine verbesserte Kugel mit Spiegel-Glanzpunkt und Marmor-Fußboden

#include "shapes.inc"
#include "colors.inc"
#include "textures.inc"
#include "himmel.inc"

// Eine rote Kugel
sphere {
	<0, 0, 0>, 1
	texture {
		pigment {color rgb <1, 0, 0>}
		finish {specular .4 roughness 0.07}
	}
}

// Eine Ebene

plane {
	<0, 1, 0>, -1
	texture {
		// pigment {checker color Blue color Yellow}
		pigment {checker pigment {White_Marble} pigment {Red_Marble}}
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

