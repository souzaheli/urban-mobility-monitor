-- colunas que nos interessam para a análise de Smart City
SELECT bairro,
    fluxo_veiculos,
    etr_indice -- fonte dos dados
    (fluxo_veiculos * 0.12) AS estimativa_co2_kg
FROM trafego_campo_grande -- apenas o que é "Crítico": Bairros com entropia acima de 0.80
WHERE etr_indice > 0.70;