# US18.feature
Feature: Historial de Consumo Detallado

  Como profesional interesado en la eficiencia energética, 
  quiero analizar gráficos históricos del consumo de cada aparato, 
  para identificar patrones, detectar anomalías y proponer mejoras específicas.

  Scenario: Consultar historial de un aparato
    Given que el usuario ha seleccionado un aparato específico de su lista
    When presiona la opción "Ver Historial"
    Then la aplicación muestra un gráfico de líneas con la evolución del consumo de ese aparato durante la última semana y el último mes

  Scenario: Comparar historial de dos aparatos
    Given que el usuario selecciona dos aparatos de su lista (ejemplo: refrigeradora y microondas)
    When activa la opción "Comparar Consumo"
    Then la aplicación muestra en un mismo gráfico dos líneas de colores diferentes, representando el consumo histórico de cada aparato en el último mes, permitiendo identificar cuál tuvo mayor gasto y en qué periodos