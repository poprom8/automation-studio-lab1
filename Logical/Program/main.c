
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _CYCLIC ProgramCyclic(void)
{
	counter++;
	if (counter >= 1100)
	{
		counter = 0;
	}

	if ((counter >= 100)&&(counter < 600))
	{
		Speed = 100.0;
	}
	else
	{
		Speed = 0.0;
	}
	
	if (Enable)
	{
		fb_controller.e = Speed - fb_motor.w;
		FB_Regulator(&fb_controller);
		
		fb_motor.u = fb_controller.u;
		FB_Motor(&fb_motor);
		
		fb_motor2.u = Speed * fb_motor2.ke;
		FB_Motor(&fb_motor2);
	}
}
