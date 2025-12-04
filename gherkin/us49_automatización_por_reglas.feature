# US49.feature
Feature: Envío de reportes automáticos

  Como residente en casa, 
  quiero recibir un resumen semanal de mi consumo y ahorro por correo electrónico, 
  para mantenerme informado sin abrir la app.

  Scenario: Generación y envío semanal
    Given el residente tiene un correo registrado
    When se cumple una semana de actividad
    Then la app genera y envía automáticamente un resumen de consumo, ahorro y alertas

  Scenario: Activación o desactivación de correos
    Given el residente accede a la configuración
    When activa o desactiva la opción "Recibir reportes semanales"
    Then la preferencia queda guardada y reflejada en su perfil