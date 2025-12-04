# US11.feature
Feature: Sistema de alertas inteligentes (Recibir alertas de sobreconsumo diario)

  Como usuario que busca controlar sus gastos, 
  quiero recibir una notificación cuando mi consumo diario supere el promedio, 
  para tomar acciones inmediatas y evitar sorpresas en la boleta mensual.

  Scenario: Alerta por consumo 20% superior al promedio
    Given que el usuario tiene un promedio diario de S/. 5.00
    When el consumo del día alcanza S/. 6.00 (20% más)
    Then el sistema envía una notificación push: "Consumo alto hoy: S/. 6.00. Tu promedio es S/. 5.00. Revisa qué dispositivos están encendidos."

  Scenario: Desactivar alertas temporalmente
    Given que el usuario sabe que tendrá un consumo atípico (ej. visita de familiares)
    When accede a Configuración y activa "Pausar alertas por 3 días"
    Then el sistema no envía notificaciones de sobreconsumo durante ese período