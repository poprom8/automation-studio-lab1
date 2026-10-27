
{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Integrator (*Интегратор*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : {REDUND_UNREPLICABLE} REAL; (*Вход интегратора*)
	END_VAR
	VAR_OUTPUT
		out : {REDUND_UNREPLICABLE} REAL; (*Выход интегратора*)
	END_VAR
	VAR
		dt : {REDUND_UNREPLICABLE} REAL; (*Шаг расчёта, с*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Motor (*Модель ДПТ*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : {REDUND_UNREPLICABLE} REAL; (*Напряжение, В*)
	END_VAR
	VAR_OUTPUT
		w : {REDUND_UNREPLICABLE} REAL; (*Частота вращения, об/мин*)
		phi : {REDUND_UNREPLICABLE} REAL; (*Положение вала*)
	END_VAR
	VAR
		integrator : {REDUND_UNREPLICABLE} FB_Integrator; (*Интегратор*)
		tm : {REDUND_UNREPLICABLE} REAL; (*Электромеханическая постоянная времени, с*)
		ke : {REDUND_UNREPLICABLE} REAL; (*Постоянная ЭДС, В*мин/об*)
		dt : {REDUND_UNREPLICABLE} REAL; (*Шаг расчёта, с*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Regulator (*ПИ-регулятор*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		e : {REDUND_UNREPLICABLE} REAL; (*Ошибка, об/мин*)
	END_VAR
	VAR_OUTPUT
		u : {REDUND_UNREPLICABLE} REAL; (*Напряжение на ДПТ, В*)
	END_VAR
	VAR
		k_p : {REDUND_UNREPLICABLE} REAL; (*Пропорциональный коэффициент*)
		k_i : {REDUND_UNREPLICABLE} REAL; (*Интегральный коэффициент*)
		integrator : {REDUND_UNREPLICABLE} FB_Integrator; (*Интегратор*)
		iyOld : {REDUND_UNREPLICABLE} REAL; (*Интегральная составляющая*)
		max_abs_value : {REDUND_UNREPLICABLE} REAL; (*Граница ограничения, В*)
		dt : {REDUND_UNREPLICABLE} REAL; (*Шаг расчёта, с*)
	END_VAR
END_FUNCTION_BLOCK
