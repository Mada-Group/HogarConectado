# US28.feature
Feature: Predicción energética mensual

  Como dueño de un pequeño negocio, 
  quiero ver una proyección del consumo y gasto esperado del próximo mes de acuerdo a mi historial 
  para anticipar gastos por encima del promedio y ajustar mi uso energético diario.

  Scenario: Presentar proyección estimada
    Given que el sistema contiene al menos 30 días de datos históricos
    When el usuario accede al panel de "Predicción"
    Then visualiza el consumo proyecto y costo estimado

  Scenario: Reajuste de acuerdo a cambios
    Given que el usuario modifica los horarios de uso de dispositivos
    When actualiza la configuración
    Then la predicción se reajusta de forma automática