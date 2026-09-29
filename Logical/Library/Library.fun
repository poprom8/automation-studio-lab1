
{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Integrator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : {REDUND_UNREPLICABLE} REAL; (*Вход ин. звена*)
	END_VAR
	VAR_OUTPUT
		out : {REDUND_UNREPLICABLE} REAL; (*Выход ин. звена*)
	END_VAR
	VAR
		dt : {REDUND_UNREPLICABLE} REAL; (*Шаг расчётра (с)*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Motor (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : {REDUND_UNREPLICABLE} REAL; (*Вход напряжение*)
	END_VAR
	VAR_OUTPUT
		w : {REDUND_UNREPLICABLE} REAL; (*Частота вращения*)
		phi : {REDUND_UNREPLICABLE} REAL; (*Положение (рад)*)
	END_VAR
	VAR
		integrator : {REDUND_UNREPLICABLE} FB_Integrator; (*Интнгратор*)
		tm : {REDUND_UNREPLICABLE} REAL; (*Электромеханическая константа времени*)
		ke : {REDUND_UNREPLICABLE} REAL; (*Постоянная ЭДС двихателя (в/обороты в мин)*)
		dt : {REDUND_UNREPLICABLE} REAL; (*Шаг расчётра (с)*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Regulator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		e : {REDUND_UNREPLICABLE} REAL; (*Осибка*)
	END_VAR
	VAR_OUTPUT
		u : {REDUND_UNREPLICABLE} REAL; (*Напряг на вход ДПТ*)
	END_VAR
	VAR
		k_p : {REDUND_UNREPLICABLE} REAL; (*сотояние души*)
		k_i : {REDUND_UNREPLICABLE} REAL; (*Мнтегральной коф рехуляторпа*)
		integrator : {REDUND_UNREPLICABLE} FB_Integrator; (*Интнгратор*)
		iyOld : {REDUND_UNREPLICABLE} REAL; (*Старик*)
		max_abs_value : {REDUND_UNREPLICABLE} REAL; (*граница блокя ограничения*)
		dt : {REDUND_UNREPLICABLE} REAL; (*Шаг расчётра (с)*)
	END_VAR
END_FUNCTION_BLOCK
