# US27.feature
Feature: Herramienta de simulación del impacto de medidas de ahorro

  Como profesional, 
  quiero simular el ahorro estimado al aplicar una recomendación, 
  para visualizar su impacto antes de hacerla efectiva.

  Scenario: Cálculo de ahorro proyectado
    Given que el profesional quiere evaluar el impacto de reducir el uso de un dispositivo
    When ingresa una hora menos de uso diario para su aire acondicionado
    Then el sistema calcula y muestra: "Ahorro estimado: s/ 12.5 al mes (-4.5% de consumo total)"

  Scenario: Comparación entre escenarios simulados
    Given que el profesional guarda configuraciones distintas de simulación
    When accede a "Comparar simulaciones"
    Then la aplicación muestra un gráfico de barras comparando ambos resultados y el escenario más eficiente