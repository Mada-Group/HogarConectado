# US23.feature
Feature: Automatización del modo ahorro

  Como dueño de un pequeño negocio en casa, 
  quiero activar un modo de ahorro automático que optimice el consumo según mis horarios, 
  para reducir gastos.

  Scenario 1: Programar horario de ahorro
    Given que el dueño desea optimizar el consumo en horarios de baja actividad
    When activa el "Modo Ahorro Automático" y define un rango de horario
    Then el sistema ajusta los dispositivos configurables y reduce el consumo energético proyectado para dicho periodo

  Scenario 2: Desactivar modo ahorro (temporal)
    Given que el usuario usa los dispositivos fuera del horario habitual
    When desactiva el "Modo Ahorro Automático" desde el panel inicial
    Then la aplicación suspende las optimizaciones y muestra el mensaje de desactivación