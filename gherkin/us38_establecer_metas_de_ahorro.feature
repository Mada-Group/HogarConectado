# US38.feature
Feature: Metas de ahorro mensual

  Como administrador del hogar, 
  quiero establecer metas mensuales de ahorro, 
  para fomentar hábitos de consumo responsable en mi familia.

  Scenario: Configuración de meta
    Given el administrador de hogar accede a la sección "Mis metas"
    When ingresa un porcentaje o monto deseado de ahorro y guarda la configuración
    Then la app confirma con el mensaje "Meta de ahorro establecida correctamente."

  Scenario: Seguimiento de progreso
    Given el administrador de hogar tiene una meta de ahorro activa
    When revisa el panel principal
    Then se muestra una barra de progreso con el avance y un porcentaje actualizado