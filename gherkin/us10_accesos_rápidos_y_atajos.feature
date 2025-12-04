# US10.feature
Feature: Sincronización en la nube

  Como persona con negocio, 
  quiero que mis datos se sincronicen automáticamente en la nube, 
  para no perder mi historial si cambio de dispositivo.

  Scenario: Sincronización automática exitosa
    Given el usuario se encuentra en la pantalla principal
    When inicia sesión en un nuevo dispositivo con conexión estable a internet
    Then la app descarga su historial y configuraciones desde la nube automáticamente

  Scenario: Fallo en la sincronización
    Given el usuario se encuentra en la pantalla principal
    When intenta sincronizar sin conexión o con error del servidor
    Then la app muestra un mensaje "Error al sincronizar, inténtalo más tarde"