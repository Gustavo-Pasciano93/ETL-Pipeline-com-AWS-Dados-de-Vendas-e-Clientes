SELECT 
    Cliente, 
    SUM(Valor) AS Total_Gasto, 
    COUNT(ID) AS Quantidade_Compras
FROM 
    vendas.dados_vendas
GROUP BY 
    Cliente
ORDER BY 
    Total_Gasto DESC;
