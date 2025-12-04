# US13.feature
Feature: Onboarding (Completar tutorial interactivo de primera vez)

  Como nuevo usuario, 
  quiero ver un tutorial guiado al abrir la app por primera vez, 
  para entender rápidamente cómo registrar dispositivos y usar las funciones principales.

  Scenario: Tutorial paso a paso
    Given que el usuario abre la app por primera vez después de registrarse
    When completa el login
    Then se muestra un tutorial interactivo de 4 pasos con tooltips: 1) Bienvenida, 2) "Registra tu primer dispositivo", 3) "Así verás tu consumo", 4) "Configura tu presupuesto"

  Scenario: Saltar tutorial
    Given que el usuario está en el tutorial
    When selecciona "Saltar" en cualquier paso
    Then se muestra confirmación "¿Saltar tutorial?" y al confirmar, redirige al dashboard con un botón "Ver tutorial" en el menú