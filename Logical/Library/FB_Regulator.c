
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Library.h"
#ifdef __cplusplus
	};
#endif
/* PI controller with output limit and anti-windup */
void FB_Regulator(struct FB_Regulator* inst)
{
	float yp;
	float y;
	
	yp = inst->k_p * inst->e;
	
	if (yp > inst->max_abs_value)
	{
		yp = inst->max_abs_value;
	}
	else if (yp < -inst->max_abs_value)
	{
		yp = -inst->max_abs_value;
	}
	
	y = yp+inst->iyOld;
	
	if (y>inst->max_abs_value)
	{
		inst->u=inst->max_abs_value;
	}
	else if (y<-inst->max_abs_value)
	{
		inst->u = -inst->max_abs_value;
	} 
	else 
	{
		inst->u=y;
	}
	
	inst->integrator.in = inst->k_i * inst->e + (inst->u - y) / inst->dt;
	inst->integrator.dt = inst->dt;
	FB_Integrator(&inst->integrator);
	
	inst->iyOld = inst->integrator.out;
}
