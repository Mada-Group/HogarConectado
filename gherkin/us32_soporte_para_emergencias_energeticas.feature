# US32.feature
Feature: Gestión de alertas energéticas

  Como un residente viviendo solo, 
  quiero soporte para emergencias como cortes de luz 
  para recibir notificaciones y consejos de respaldo.

  Scenario: Resumen de impacto
    Given que hay un corte detectado por la app
    When se restablece la energía
    Then envía un resumen de impacto y tips para minimizar pérdidas futuras

  Scenario: Recomendación instantánea
    Given configuro alertas de picos inesperados
    When ocurre un sobrevoltaje
    Then la app sugiere desconectar dispositivos sensibles para proteger el hogar