# US21.feature
Feature: Clasificación de dispositivos por tipo de uso

  Como técnico/profesional, 
  quiero clasificar los dispositivos por tipo de uso, 
  para comprobar el consumo diferenciado y asesorar a mis clientes.

  Scenario: Etiquetar dispositivos como "hogar" o "negocio"
    Given que el profesional accede a la lista de dispositivos conectados
    When selecciona uno y elige una etiqueta
    Then el sistema registra la clasificación y actualiza los reportes con el consumo agrupado de acuerdo a esa categoría

  Scenario: Modificar clasificación existente
    Given que el profesional desea cambiar la categoría de un dispositivo
    When abre la configuración del aparato y selecciona la opción "Cambiar a hogar"
    Then la aplicación actualiza la etiqueta y recalcula el consumo en el gráfico general