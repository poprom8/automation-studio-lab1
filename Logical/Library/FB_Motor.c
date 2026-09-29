
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Library.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */
void FB_Motor(struct FB_Motor* inst)
{
	inst->integrator.in = (inst->u / inst->ke -  inst->w) / inst->tm;
	
	FB_Integrator(&inst->integrator);
	
	inst->w=inst->integrator.out;
	
	inst->phi=inst->phi + inst->w* inst->dt;
}
