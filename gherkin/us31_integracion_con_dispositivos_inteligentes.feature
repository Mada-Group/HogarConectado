# US31.feature
Feature: Vinculación de dispositivos inteligentes a la app

  Como profesional, 
  quiero vincular mis dispositivos inteligentes 
  para un control unificado y eficiente.

  Scenario: Vincular con la app
    Given que el profesional quiere conectar su lámpara inteligente
    When ingresa a la app en el apartado de "Mis aparatos"
    Then detecta el sobreuso y la atenúa automáticamente para ahorrar

  Scenario: Desvincular de la app
    Given que el profesional tiene vinculado algunos dispositivos inteligentes
    When decide desvincularlo de la app
    Then presiona el botón de "Desvinculación" y se elimina de la app