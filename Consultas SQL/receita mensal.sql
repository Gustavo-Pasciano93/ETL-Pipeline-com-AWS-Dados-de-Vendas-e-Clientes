SELECT 
    DATE_FORMAT(DATA, '%Y-%m') AS Mes, 
    SUM(Valor) AS Receita_Mensal, 
    COUNT(ID) AS Total_Vendas
FROM 
    vendas.dados_vendas
GROUP BY 
    Mes
ORDER BY 
    Mes ASC;
