# US22.feature
Feature: Detección de consumo fantasma

  Como profesional, 
  quiero recibir alertas sobre los aparatos que generan energía mientras no son usados (standby), 
  para evitar gastos innecesarios.

  Scenario: Notificación por consumo frecuente en standby
    Given que el profesional no desconecta un aparato
    When el sistema detecta un consumo mínimo
    Then la aplicación envía una notificación push alertando sobre un consumo irregular

  Scenario: Registro de historial de alertas
    Given que el profesional ha recibido múltiples notificaciones de consumo fantasma
    When accede a la sección "Historial de alertas"
    Then puede visualizar las fechas, aparatos y duración del consumo