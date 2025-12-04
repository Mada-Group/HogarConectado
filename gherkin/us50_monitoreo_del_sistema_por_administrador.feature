# US50.feature
Feature: Panel de administración

  Como administrador del sistema, 
  quiero monitorear el rendimiento de la aplicación y detectar errores, 
  para garantizar una experiencia estable para todos los usuarios.

  Scenario: Supervisión del rendimiento
    Given el administrador accede al panel de monitoreo
    When revisa las métricas del sistema (tiempo de respuesta, errores, tráfico)
    Then la app muestra reportes gráficos y registros actualizados

  Scenario: Detección y registro de errores
    Given ocurre un fallo en el sistema
    When se genera un error interno
    Then el sistema registra el evento y envía una alerta al panel del administrador