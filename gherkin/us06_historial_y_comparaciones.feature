# US06.feature
Feature: Historial y comparaciones

  Como usuario técnico, 
  quiero consultar el historial de consumo y compararlo con meses anteriores, 
  para analizar si mis hábitos están mejorando.

  Scenario 1: Comparaciones por meses
    Given el residente se encuentra en la pantalla principal
    When da click en el panel "Historial y Comparaciones" y seleccione el mes actual y el anterior
    Then la app muestra diferencias en % y soles por aparato

  Scenario 2: Comparaciones por meses sin éxito
    Given el residente se encuentra en la pantalla principal
    When da click en el panel "Historial y Comparaciones" y no tiene datos de meses anteriores
    Then aparece un mensaje "sin información disponible"

    