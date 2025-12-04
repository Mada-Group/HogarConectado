# US36.feature
Feature: Tutorial de bienvenida

  Como usuario nuevo, 
  quiero que la app me muestre un tutorial inicial paso a paso, 
  para entender cómo registrar dispositivos y visualizar mis estadísticas.

  Scenario: Mostrar tutorial al primer ingreso
    Given el usuario accede a la aplicación por primera vez
    When inicia sesión y no ha completado el tutorial
    Then la app muestra una guía visual con los pasos básicos del uso

  Scenario: Omitir o repetir tutorial
    Given el usuario se encuentra en el tutorial inicial
    When selecciona la opción "Omitir"
    Then el sistema registra su elección y muestra un acceso al tutorial desde el menú "Ayuda"