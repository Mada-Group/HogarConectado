# US35.feature
Feature: Notificación de sobreconsumo

  Como usuario con un negocio en casa, 
  quiero recibir notificaciones cuando el consumo de mi negocio supere un límite definido, 
  para tomar decisiones rápidas y evitar incrementos en mi factura eléctrica.

  Scenario: Alerta por exceso de consumo
    Given el usuario ha configurado un límite máximo de consumo eléctrico en su cuenta
    When el sistema detecta que el consumo del negocio supera ese límite
    Then la aplicación envía una notificación push con el mensaje "Has superado tu límite de consumo. Revisa tus dispositivos activos."

  Scenario: Configuración del límite
    Given el usuario accede al módulo "Mis Alertas"
    When define un límite de consumo mensual o diario y guarda los cambios
    Then la plataforma confirma con el mensaje "Tu límite de consumo ha sido establecido correctamente."