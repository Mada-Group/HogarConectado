# US37.feature
Feature: Registro diferenciado de consumo

  Como teletrabajador, 
  quiero diferenciar el consumo de mi zona de trabajo del resto del hogar, 
  para conocer el gasto energético real de mi actividad laboral.

  Scenario: Clasificación por zonas
    Given el profesional ha vinculado dispositivos inteligentes a la app
    When selecciona el área "Oficina" o "Zona laboral"
    Then el sistema clasifica automáticamente el consumo en la categoría "Trabajo"

  Scenario: Visualización separada de reportes
    Given el usuario accede al módulo "Reportes de consumo"
    When elige la vista "Consumo laboral" o "Consumo doméstico"
    Then la aplicación muestra los gráficos independientes de cada categoría