# US05.feature
Feature: Separación de consumo hogar/negocio

  Como dueño de un pequeño negocio en casa, 
  quiero ver reportes diferenciados de consumo personal y de negocio, 
  para controlar mejor mis gastos.

  Scenario: Cambio de modo hogar/negocio
    Given el residente se encuentra en el panel "Mi consumo"
    When da click en los botones "modo hogar" o "modo negocio"
    Then Los reportes y los gráficos se muestran separados por categoría

  Scenario: Dispositivos sin clasificación
    Given el residente se encuentra en el panel "Mi consumo" pero no clasificó un aparato como "Hogar" o "Negocio"
    When da click en los botones "modo hogar" o "modo negocio"
    Then En el reporte aparecen esos dispositivos en la sección "sin clasificar"

  Scenario: Clasificar dispositivos
    Given el residente se encuentra en la sección "sin clasificar"
    When da click en los aparatos de la lista
    Then aparecen dos opciones para clasificar el aparato (de Hogar, de Negocio)

    