# US39.feature
Feature: Historial visual

  Como usuario frecuente, 
  quiero visualizar mi historial de consumo en gráficos, 
  para identificar patrones y detectar anomalías.

  Scenario: Visualización por periodo
    Given el usuario accede al módulo "Historial"
    When selecciona un rango de fechas (diario, semanal o mensual)
    Then la app muestra un gráfico dinámico con los valores de consumo correspondientes

  Scenario: Exportación de datos
    Given el usuario observa su gráfico de consumo
    When selecciona la opción "Exportar"
    Then el sistema genera un archivo PDF o Excel con los datos seleccionados