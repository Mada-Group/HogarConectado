# US02.feature
Feature: Inicio de sesión

  Como residente registrado, 
  quiero iniciar sesión con mi correo y contraseña, 
  para acceder a mi cuenta y datos de consumo.

  Scenario: Login correcto
    Given el residente se encuentra en el login
    When ingresa su correo y contraseña válidos y hace clic en el botón "Iniciar sesión"
    Then accede al panel principal

  Scenario: Credenciales incorrectas
    Given el residente se encuentra en el login
    When ingresa un correo o contraseña incorrectos y hace clic en el botón "Iniciar sesión"
    Then recibe un mensaje de error y no accede a la app

    