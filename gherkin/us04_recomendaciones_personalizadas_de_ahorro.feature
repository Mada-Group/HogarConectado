# US04.feature
Feature: Recomendaciones personalizadas de ahorro

  Como residente preocupado por el ahorro, 
  quiero recibir consejos prácticos basados en mis patrones de consumo, 
  para reducir mi gasto eléctrico.

  Scenario: Recomendaciones por mayor consumo de un dispositivo
    Given el residente se encuentra en el panel "Mi consumo" y ve el dispositivo con mayor consumo
    When da click en el botón "Ahorrar"
    Then se dirige al panel de "Recomendaciones" y observa las recomendaciones personalizadas

  Scenario: Recomendaciones por sugerencias
    Given el residente se encuentra en el panel "Mi consumo" y el consumo está dentro de rangos normales
    When da click en el botón "Sugerencias"
    Then se dirige al panel de "Recomendaciones" y aparece un mensaje motivacional sin cambios críticos

    