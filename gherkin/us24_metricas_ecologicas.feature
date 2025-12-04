# US24.feature
Feature: Visualización del impacto ambiental del ahorro

  Como especialista en energía y sostenibilidad, 
  quiero visualizar el impacto ecológico del ahorro, 
  para fomentar conciencia ambiental.

  Scenario: Mostrar equivalencias ecológicas
    Given que el sistema calcula una reducción de consumo mensual
    When el profesional accede al panel ecológico
    Then la app muestra los resultados en equivalencias reales (impacto ecológico) con una frase "Has evitado 2kg de CO2 este mes"

  Scenario: Comparar progreso ecológico mensual
    Given que el profesional consulta sus métricas de ahorro
    When selecciona meses en secuencia
    Then el sistema genera una comparación gráfica del impacto ecológico con un porcentaje de avance o retroceso