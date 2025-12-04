# US45.feature
Feature: Monitoreo de consumo diario (Alerta de exceso)

  Como usuario que busca optimizar su presupuesto, 
  quiero recibir alertas cuando mi consumo diario supere el promedio, 
  para ajustar mis hábitos antes de fin de mes.

  Scenario: Generación de alerta automática
    Given el usuario tiene un promedio diario de consumo calculado
    When el sistema detecta un consumo superior al promedio
    Then se envía una alerta push con el mensaje "Tu consumo de hoy ha superado el promedio diario."

  Scenario: Consulta de alertas pasadas
    Given el usuario accede al módulo "Alertas"
    When selecciona "Historial de alertas"
    Then la app muestra la fecha, tipo de alerta y acción recomendada