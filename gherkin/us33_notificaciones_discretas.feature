# US33.feature
Feature: Gestión de alertas energéticas 

  Como profesional, 
  quiero recibir notificaciones discretas de consumo cuando estoy en videollamadas, 
  para actuar sin distraerme de mis compromisos laborales.

  Scenario: Quitar notificación emergente
    Given el profesional se encuentra en una reunión
    When llega una alerta de sobreconsumo en segundo plano
    Then la app permite un ajuste rápido con un toque para eliminar la notificación

  Scenario: Notificaciones inteligentes
    Given configura notificaciones silenciosas
    When desea saber si el router consume en exceso
    Then la app sugiere un reinicio programado post-reunión