# US12.feature
Feature: Gestión de presupuesto (Establecer presupuesto mensual de consumo)

  Como usuario que busca controlar gastos, 
  quiero configurar un presupuesto máximo mensual en soles, 
  para recibir alertas cuando esté cerca de excederlo.

  Scenario: Configurar meta mensual
    Given que el usuario accede a "Mi Presupuesto"
    When ingresa S/. 80 y confirma
    Then el dashboard muestra una barra de progreso: "Consumo actual: S/. 32 / S/. 80 (40%)"

  Scenario: Alerta al 80% del presupuesto
    Given que el usuario configuró S/. 80 de presupuesto
    When el consumo alcanza S/. 64 (80%)
    Then el sistema envía notificación: "Has usado el 80% de tu presupuesto mensual. Quedan S/. 16 disponibles."