
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Library.h"
#ifdef __cplusplus
	};
#endif
/* Discrete integrator: out = out + in*dt */
void FB_Integrator(struct FB_Integrator* inst)
{
	inst->out = inst->out + inst->in * inst->dt;
}
