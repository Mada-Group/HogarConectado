# US03.feature
Feature: Monitoreo en tiempo real

  Como residente, 
  quiero visualizar mi consumo eléctrico en tiempo real, 
  para identificar cuándo gasto más energía durante el día.

  Scenario: Ver consumo de energía
    Given el residente se encuentra en la pantalla principal
    When da click en el panel "Mi consumo"
    Then ve el consumo actualizado en porcentajes y muestra el dispositivo que consume más energía

  Scenario: Vista offline
    Given el residente pierde su conexión a internet y se encuentra en la pantalla principal
    When da click en el panel "Mi consumo"
    Then la app muestra el último dato disponible y un aviso de reconexión

    