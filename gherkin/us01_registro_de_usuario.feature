# US01.feature
Feature: Registro de usuario

  Como residente, 
  quiero registrarme con mi correo y datos básicos, 
  para poder acceder a la aplicación y personalizar mi consumo.

  Scenario: Registro exitoso con verificación
    Given el residente se encuentra en el formulario de registro de usuario
    When el usuario registra los datos (DNI, correo y teléfono) y envía el formulario (botón "Registrar")
    Then la plataforma activa la cuenta y muestra el mensaje "Registro exitoso. Ahora puedes iniciar sesión"

  Scenario: Datos inválidos
    Given el residente se encuentra en el formulario de registro de usuario
    When el residente ingresa un correo en formato incorrecto o dejó un campo vacío y envía el formulario (botón "Registrar")
    Then la plataforma muestra un mensaje de error sin crear la cuenta
