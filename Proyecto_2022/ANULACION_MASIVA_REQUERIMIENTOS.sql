/*
------------------
- REQUERIMIENTOS -
------------------
*/

/*
    DE ABIERTO A ANULADO
    ESTADO ANULADO ES ID 29
    CERRADO POR SCRIPT ES RAZON ID 115
*/

--SOLO UNO

UPDATE 
    ASDK_SERVICE_CALL 
SET 
    SERV_STATUS_ID = 29, --ID DEL ESTADO AL QUE VA
    SERV_REASON_ID = 115, --ID DE LA RAZON PARA SU ANULACION
    serv_final_status = 0, --ESTADO FINAL DEL TICKET. 0 CERRADO Y 1 ABIERTO
    SERV_colsed_date = GETDATE() 
WHERE 
    serv_id_by_project = 176936
    AND SERV_fl_int_project_id = 1;

--VARIOS TICKETS

BEGIN
    UPDATE 
        ASDK_SERVICE_CALL 
    SET 
        SERV_STATUS_ID = 29, --ID DEL ESTADO AL QUE VA
        SERV_REASON_ID = 115, --ID DE LA RAZON PARA SU ANULACION
        serv_final_status = 0, --ESTADO FINAL DEL TICKET. 0 CERRADO Y 1 ABIERTO
        SERV_colsed_date = GETDATE() 
    WHERE 
        SERV_fl_int_project_id = 1
        AND serv_id_by_project IN (177050, 181558, 175225, 175861, 175862, 176452, 166048, 197961, 198812, 210329, 224776, 224793, 227087, 228693, 232819, 139874, 133746, 136128, 136129, 136407, 136408, 137224, 137315, 137435, 137520, 137862, 138788, 138789, 139099, 139100, 140920, 143023, 143024, 220940, 224846, 226137, 164555, 175956, 228645, 161186, 161455, 161459, 161490, 161970, 162020, 162034, 162256, 162889, 162932, 162978, 163083, 163146, 163329, 163349, 163892, 164023, 164100, 164107, 164247, 164495, 164684, 164834, 164927, 164991, 164999, 165058, 165097, 165363, 165592, 165670, 165785, 165914, 165997, 166001, 166357, 166419, 166515, 167008, 167010, 167072, 167196, 167348, 167362, 167446, 167528, 167626, 167741, 167817, 167994, 168269, 168325, 168380, 168506, 168509, 168515, 168598, 168612, 168674, 168828, 168950, 169449, 169645, 169759, 169957, 170031, 170655, 170658, 170659, 170664, 170803, 171445, 171480, 171652, 171692, 171940, 171951, 172376, 172410, 172666, 172690, 172795, 172982, 173060, 173166, 173258, 173649, 174091, 174165, 174253, 174331, 174441, 174769, 174774, 174924, 174983, 175033, 175053, 175130, 175131, 175180, 175187, 175456, 175468, 175735, 175979, 176112, 176254, 176408, 176783, 176795, 176843, 176844, 176893, 177031, 177397, 177401, 177557, 177673, 177686, 177909, 178434, 162205, 175966, 178350)
END;
