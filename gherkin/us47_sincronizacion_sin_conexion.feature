# US47.feature
Feature: Sincronización offline

  Como residente con conexión inestable, 
  quiero que mis datos se guarden localmente y se sincronicen cuando vuelva el internet, 
  para no perder información.

  Scenario: Almacenamiento temporal
    Given el residente registra consumo mientras está sin conexión
    When el dispositivo detecta internet nuevamente
    Then la app sincroniza automáticamente los datos con el servidor

  Scenario: Confirmación de sincronización
    Given la app ha sincronizado correctamente
    When finaliza el proceso
    Then muestra el mensaje "Datos sincronizados con éxito."