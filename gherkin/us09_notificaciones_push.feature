# US09.feature
Feature: Modo oscuro / claro

  Como persona con negocio, 
  quiero elegir entre modo oscuro o claro en la interfaz, 
  para mejorar la legibilidad y reducir fatiga visual.

  Scenario: Activar modo oscuro
    Given el usuario se encuentra en la pantalla "Configuración de apariencia"
    When selecciona el "modo oscuro"
    Then la app cambia el fondo y textos a tonos oscuros

  Scenario: Activar modo claro
    Given el usuario se encuentra en la pantalla "Configuración de apariencia"
    When selecciona el "modo claro"
    Then la app restaura los colores predeterminados