# US07.feature
Feature: Configuración de perfil de usuario

  Como residente, 
  quiero editar mi perfil (nombre, foto, dirección y tipo de hogar), 
  para personalizar mi experiencia y recibir recomendaciones adecuadas.

  Scenario: Actualización exitosa
    Given el usuario se encuentra en la pantalla "Editar Perfil"
    When modifica su nombre o dirección y presiona "Guardar"
    Then la app actualiza los datos y confirma el cambio

  Scenario: Campos incompletos
    Given el usuario se encuentra en la pantalla "Editar Perfil"
    When deja un campo obligatorio vacío
    Then la app muestra un mensaje indicando que debe completarlo

    