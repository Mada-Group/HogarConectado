# US30.feature
Feature: Detección inteligente de anomalías

  Como profesional, 
  quiero que el sistema detecte patrones inusuales o puntos de consumo inesperados, 
  para identificar posibles fallas o dispositivos defectuosos de forma automática.

  Scenario: Solicitar revisión
    Given que el sistema analiza el historial de consumo de cada dispositivo
    When detecta un aumento anormal en el gasto
    Then muestra una alerta sobre el dispositivo involucrado y solicita revisión

  Scenario: Visualización en el panel técnico
    Given que el usuario accede al "Panel técnico"
    When selecciona un aparato con un alerta activa
    Then el sistema resalta en el gráfico la variación anómala y presenta opciones ("verificado" y "en revisión")