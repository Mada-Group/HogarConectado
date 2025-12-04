# US14.feature
Feature: Sistema de logros (Ganar insignias por hábitos de ahorro)

  Como usuario motivado por logros, 
  quiero recibir insignias digitales cuando alcance metas de ahorro, 
  para mantenerme comprometido con mis objetivos de eficiencia energética.

  Scenario: Desbloquear primera insignia
    Given que el usuario redujo su consumo en 10% durante una semana
    When el sistema detecta el logro al finalizar la semana
    Then se muestra una animación celebratoria y la insignia "Ahorrador Novato" se agrega a su perfil con fecha de obtención

  Scenario: Ver colección de insignias
    Given que el usuario tiene 5 insignias desbloqueadas
    When accede a "Mi Perfil" > "Logros"
    Then se muestra una galería con insignias obtenidas en color y bloqueadas en gris con requisitos para desbloquearlas