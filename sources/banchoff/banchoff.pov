// Filename banchoff.pov
// © 1999 by Jörg Kantel, Berlin-Neukölln

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"

#include "himmel.inc"

camera
{
   location <4.0, 4.0, -4.0>
   look_at <0, 2, 0>
}

light_source
{
   <25, 50, -25>
   color White 
}
light_source
{
   <50, 25, -25>
   color White
}

plane
{
   y, -1
   pigment
   {
      color Green
   }
}

#declare DeltaU = 0.2;
#declare U = 0;
#while (U < 2*pi + clock*pi)
   #declare DeltaV = 0.05;
   #declare V = 0;
   #while (V < 2*pi)
      #declare H = cos(U/2)*(sqrt(2) + cos(V)) + (sin(U/2)*sin(V)*cos(V));
      #declare X = cos(U)*H;
      #declare Z = sin(U)*H;
      #declare Y = -sin(U/2)*(sqrt(2) + cos(V)) + cos(U/2)*sin(V)*cos(V);
      sphere
      {
         <X, Y, Z>, 0.1
         texture
         {
            pigment
            {
               color Red
            }
            finish
            {
               phong 0.8
               phong_size 25
            }
         }
         translate <0, 2, 0>
         rotate <0, -45, 0>
       }
      #declare V = V + DeltaV;
   #end
   #declare U = U + DeltaU;
#end