# US48.feature
Feature: Personalización de panel

  Como residente avanzado en la app, 
  quiero personalizar las métricas del panel principal, 
  para visualizar solo la información que me interesa.

  Scenario: Selección de métricas
    Given el residente se encuentra en el panel principal
    When selecciona la opción "Editar vista" y elige las métricas deseadas
    Then la app actualiza el panel con los indicadores seleccionados

  Scenario: Guardado de configuración
    Given el residente modifica la disposición de los indicadores
    When guarda los cambios
    Then la configuración personalizada se mantiene al volver a iniciar sesión