# US40.feature
Feature: Asistente de soporte interactivo

  Como usuario con poca experiencia digital, 
  quiero contar con un asistente virtual, 
  para recibir orientación durante la navegación o configuración.

  Scenario: Activación del asistente
    Given el usuario se encuentra en cualquier pantalla principal
    When selecciona el ícono del asistente
    Then el sistema despliega un cuadro de diálogo con ayuda contextual

  Scenario: Preguntas frecuentes
    Given el usuario accede al menú del asistente
    When elige una categoría como "Configuración" o "Alertas"
    Then la app muestra respuestas breves y enlaces a tutoriales visuales