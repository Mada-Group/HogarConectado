# US20.feature
Feature: Chat de soporte
  Como residente en casa con dudas o problemas, 
  quiero enviar mensajes al equipo de soporte directamente desde la app, 
  para resolver inconvenientes sin salir de la aplicación.

  Scenario: Enviar consulta con adjuntos
    Given que el usuario tiene un problema con cálculos incorrectos
    When accede a "Ayuda" > "Contactar Soporte", escribe su consulta y adjunta captura de pantalla
    Then el mensaje se envía exitosamente y muestra "Responderemos en menos de 24h. Ticket #4521"

  Scenario: Ver historial de tickets
    Given que el residente envió 3 consultas anteriormente
    When accede a "Mis Consultas"
    Then se muestra lista con estado de cada ticket: "Resuelto" (verde), "En proceso" (amarillo), "Cerrado" (gris)