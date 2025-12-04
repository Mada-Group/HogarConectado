# US43.feature
Feature: Organización de dispositivos

  Como usuario con varios dispositivos inteligentes, 
  quiero agruparlos por habitación o categoría, 
  para controlar el consumo de forma más ordenada.

  Scenario: Crear grupo de dispositivos
    Given el usuario se encuentra en el módulo "Mis Dispositivos"
    When selecciona la opción "Crear grupo" e ingresa el nombre y los aparatos incluidos
    Then la app guarda el grupo y muestra su consumo total combinado

  Scenario: Editar o eliminar grupo
    Given el usuario tiene grupos creados
    When edita o elimina uno
    Then el sistema actualiza la lista y recalcula los porcentajes de consumo