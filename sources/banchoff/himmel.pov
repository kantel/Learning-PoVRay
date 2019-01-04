// Standardhimmel

#include "colors.inc"

sky_sphere
{
   pigment
   {
      gradient y
      color_map
      {
         [0.2 color LightSteelBlue]
         [1.0 color Blue]
      }
   }
}
