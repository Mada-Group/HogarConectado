# US19.feature
Feature: Cuentas vinculadas 

  Como residente en casa que vive en familia o con roommates, 
  quiero compartir el dashboard con ellos (solo lectura), 
  para que todos vean el consumo y colaboren en reducirlo.

  Scenario: Invitar miembros del hogar
    Given que el usuario accede a "Compartir Dashboard"
    When ingresa emails de 3 familiares y envía invitación
    Then cada uno recibe email con link para registrarse como "Miembro" (solo lectura, sin editar dispositivos ni configuración)

  Scenario: Ver quién consume más (modo hogar compartido)
    Given que cada miembro registró sus dispositivos personales
    When activan "Modo Hogar Compartido"
    Then el dashboard muestra desglose: "María: S/. 18 (TV, laptop)", "Juan: S/. 25 (gaming, AC)", "Dispositivos comunes: S/. 30 (refrigerador, cocina)"