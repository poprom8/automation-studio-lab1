
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	//LEGO NXT
	
	fb_motor.tm = 0.081;
	fb_motor.ke = 0.0641;
	fb_motor.dt = 0.001;
	
	fb_motor.w = 0.0;
	fb_motor.phi = 0.0;
	fb_motor.integrator.in = 0.0;
	fb_motor.integrator.out = 0.0;
	fb_motor.integrator.dt = 0.001;
	
	fb_motor2.tm = 0.081;
	fb_motor2.ke = 0.0641;
	fb_motor2.dt = 0.001;
	
	fb_motor2.w = 0.0;
	fb_motor2.phi = 0.0;
	fb_motor2.integrator.in = 0.0;
	fb_motor2.integrator.out = 0.0;
	fb_motor2.integrator.dt = 0.001;
	
	fb_controller.k_p = 2.5192;
	fb_controller.k_i = 0.0641;
	fb_controller.max_abs_value = 9.0; 
	fb_controller.dt = 0.001;
		
	fb_controller.iyOld = 0.0;
	fb_controller.integrator.in = 0.0;
	fb_controller.integrator.out = 0.0;
	fb_controller.integrator.dt = 0.001;
	
	
	Speed = 0.0;
	Enable = 'TRUE';
	counter = 0;
	
}
