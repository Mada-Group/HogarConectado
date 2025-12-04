# US29.feature
Feature: Historial de ahorro y rendimiento

  Como profesional, 
  quiero consultar el total de ahorro energético y económico logrado, 
  para evaluar la efectividad de mis acciones y proyectar mejores resultados.

  Scenario: Visualizar ahorro acumulado
    Given que el usuario ha utilizado la app por varios meses
    When accede al "Historial de ahorro"
    Then el sistema muestra un gráfico del ahorro mensual y acumulado (s/ y kWh)

  Scenario: Cálculo de rendimiento energético
    Given que el usuario ha reducido su consumo por unos meses
    When accede a "Estadísticas de rendimiento"
    Then el sistema muestra un mensaje con la reducción porcentual del consumo total y el ahorro en soles