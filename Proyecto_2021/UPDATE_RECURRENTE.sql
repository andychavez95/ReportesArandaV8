/*
	UPDATE PARA CAMBIAR EL ID DEL SLA DE UN REQUERIMIENTO,
	FECHA DE ATENCIÓN ESTIMADA Y SOLUCIÓN ESTIMADA
	FORMATO DE LA FECHA: MES-DIA-AÑO HORA:MINUTO:SEGUNDO
*/
BEGIN
	UPDATE ASDK_SERVICE_CALL --TABLA DE REQUERIMIENTOS
	SET 
		serv_service_sla_id = 21, --ID DEL SLA
		serv_attention_esti_date = '03-22-2022 08:09:18', --FECHA DE SOLUCIÓN ESTIMADA
		serv_expired_date = '03-22-2022 08:12:19' --FECHA DE SOLUCIÓN ESTIMADA
	WHERE serv_id_by_project = 8541 --ID DEL REQUERIMIENTO
END;

-- UPDATE PARA CAMBIAR LA DESCRIPCION DEL REQUERIMIENTO
BEGIN
	UPDATE ASDK_SERVICE_CALL --TABLA DE REQUERIMIENTOS
	/*AGREGAR "ACTIVIDAD TI" A LA DESCRIPCION
		SE PUEDE AGREGAR CUALQUIER OTRO TEXTO
	*/
	SET serv_description = CONCAT('ACTIVIDAD TI - ', serv_description) 
	WHERE serv_id_by_project = 8536 --ID DEL REQUERIMIENTO
END;
