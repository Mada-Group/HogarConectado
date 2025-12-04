# US44.feature
Feature: Gestión de tareas familiares

  Como padre o madre, 
  quiero asignar tareas de ahorro a los miembros del hogar, 
  para fomentar responsabilidad compartida en el uso de energía.

  Scenario: Crear tarea de ahorro
    Given el usuario se encuentra en el módulo "Tareas familiares"
    When crea una nueva tarea (por ejemplo, "apagar luces del dormitorio")
    Then la app notifica al miembro asignado y la tarea aparece en su lista

  Scenario: Verificar cumplimiento
    Given la tarea tiene una fecha límite
    When el miembro del hogar marca la tarea como "completada"
    Then el sistema actualiza el historial y refleja la participación en el panel familiar