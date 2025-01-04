SELECT 
    Produto, 
    COUNT(Produto) AS Quantidade_Vendida, 
    SUM(Valor) AS Receita_Total
FROM 
    vendas.dados_vendas
GROUP BY 
    Produto
ORDER BY 
    Quantidade_Vendida DESC;