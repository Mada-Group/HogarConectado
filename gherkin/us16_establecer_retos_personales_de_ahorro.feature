# US16.feature
Feature: Retos personalizados (Establecer retos personales de ahorro)

  Como usuario autodisciplinado, 
  quiero crear retos personalizados (ej. "Reducir consumo en 15% este mes"), 
  para tener objetivos claros más allá del presupuesto básico.

  Scenario: Crear reto mensual
    Given que el usuario accede a "Mis Retos"
    When selecciona "Crear reto", define "Reducir 20% vs mes pasado" con duración 30 días
    Then el sistema calcula la meta (ej. pasar de S/. 80 a S/. 64) y muestra progreso diario en el dashboard

  Scenario: Completar reto exitosamente
    Given que el usuario alcanzó su meta de reducción del 20%
    When finaliza el mes
    Then recibe notificación: "¡Reto completado! Ahorraste S/. 16 este mes" y desbloquea insignia especial "Maestro del Ahorro"