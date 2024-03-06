DELIMITER //

CREATE PROCEDURE LevantamentoDiario(IN dataPesquisa DATE)
BEGIN
    SELECT 
        data_compra AS Data,
        COUNT(*) AS Quantidade_Comprada
    FROM 
        compras
    WHERE 
        DATE(data_compra) = dataPesquisa
    GROUP BY 
        DATE(data_compra);
END;//

DELIMITER ;
CALL LevantamentoDiario('2023-12-15');
