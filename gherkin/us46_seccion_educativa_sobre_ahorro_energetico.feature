# US46.feature
Feature: Contenido educativo

  Como usuario interesado en educación energética, 
  quiero acceder a consejos y artículos sobre eficiencia, 
  para aprender nuevas formas de reducir mi consumo.

  Scenario: Visualización de artículos
    Given el usuario accede a la sección "Aprende y Ahorra"
    When selecciona un tema (ej. iluminación, refrigeración, hábitos)
    Then la app muestra artículos con infografías, videos o consejos breves

  Scenario: Filtrado por categoría
    Given el usuario está dentro de la sección educativa
    When aplica filtros por nivel (básico, intermedio, avanzado)
    Then el contenido se actualiza según el filtro seleccionado