-- Cálculo do Índice de Saturação de Via (ISV)
-- Objetivo: Identificar gargalos de mobilidade urbana
SELECT bairro,
    horario_pico,
    ((fluxo_veiculos * 1.0) / capacidade_via) * 100 AS percentual_saturacao
FROM trafego_mobilidade
WHERE ((fluxo_veiculos * 1.0) / capacidade_via) * 100 > 70;
-- Alerta de saturação alta