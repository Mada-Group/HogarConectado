# US26.feature
Feature: Asistente virtual con IA

  Como profesional, 
  quiero contar con un asistente virtual impulsado con IA que recomiende buenas prácticas basadas en patrones de uso, 
  para educar a los usuarios.

  Scenario: Recomendación basada en patrones de uso
    Given que el sistema detecta un alto consumo
    When el asistente analiza el historial de consumo
    Then genera una sugerencia personalizada

  Scenario: Interacción con el usuario
    Given que el profesional consulta de forma abierta
    When el asistente procesa la solicitud
    Then responde con una recomendación técnica y práctica