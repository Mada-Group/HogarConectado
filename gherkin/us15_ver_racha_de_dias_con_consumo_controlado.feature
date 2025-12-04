# US15.feature
Feature: Contador de rachas (Ver racha de días con consumo controlado)

  Como usuario competitivo, 
  quiero ver cuántos días consecutivos he mantenido mi consumo dentro del presupuesto, 
  para motivarme a continuar con buenos hábitos.

  Scenario: Visualizar racha actual
    Given que el usuario ha cumplido su presupuesto diario por 7 días seguidos
    When accede al dashboard
    Then se muestra una tarjeta: "Racha actual: 7 días sin exceder presupuesto. ¡Récord personal: 12 días!"

  Scenario: Racha rota
    Given que el usuario excede su presupuesto diario
    When finaliza el día
    Then recibe notificación: "Tu racha de 7 días terminó. ¡Empieza una nueva mañana!" y el contador se reinicia a 0