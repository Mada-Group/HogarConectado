# US41.feature
Feature: Visualización del impacto ambiental

  Como usuario preocupado por el medio ambiente, 
  quiero ver cuánta energía limpia ahorro con mis buenas prácticas, 
  para sentirme motivado a continuar reduciendo mi consumo.

  Scenario: Mostrar equivalencias ecológicas
    Given el usuario ha registrado un consumo energético mensual
    When accede al panel de "Impacto Ambiental"
    Then la app muestra equivalencias como "X kg de CO2 evitados" o "X árboles salvados"

  Scenario: Actualización automática
    Given el usuario mantiene un historial de ahorro
    When se actualizan los datos de consumo
    Then el sistema recalcula automáticamente el impacto ambiental y actualiza los valores mostrados