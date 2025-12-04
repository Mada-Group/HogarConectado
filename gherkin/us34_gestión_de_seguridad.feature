# US34.feature
Feature: Sistema de valoración

  Como residente en casa que usa la app diariamente, 
  quiero valorar la app y dejar reseñas 
  para compartir mi experiencia a otros usuarios.

  Scenario: Valoración en ventana emergente
    Given el residente le funciona bien la app
    When le llega una ventana emergente de "Calificanos"
    Then decide dejar su puntuación y un comentario

  Scenario: Notificaciones inteligentes
    Given el residente le funciona de maravilla la app y desea valorarlo
    When entra en el apartado de "Configuración" y presiona el botón "Valorar"
    Then deja su puntuación y comentario al respecto