# US25.feature
Feature: Sincronización de consumo con calendario

  Como dueño de un pequeño negocio en casa, 
  quiero vincular mi consumo con mi calendario laboral, 
  para identificar días o eventos con mayor gasto energético.

  Scenario: Vincular con Google Calendar
    Given que el dueño desea analizar el consumo por eventos especiales
    When autoriza la sincronización con su calendario de Google
    Then la aplicación asocia los registros de consumo diario con los eventos citados

  Scenario: Detección de picos de consumo
    Given que el sistema detecta un aumento del consumo en la fecha de un evento
    When el usuario revisa el resumen diario
    Then la aplicación le muestra un aviso