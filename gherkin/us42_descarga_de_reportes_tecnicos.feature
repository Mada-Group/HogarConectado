# US42.feature
Feature: Generación de reportes

  Como técnico o especialista, 
  quiero descargar reportes detallados del consumo en formato PDF o CSV, 
  para compartir análisis con clientes o instituciones.

  Scenario: Exportar reporte técnico
    Given el usuario se encuentra en la sección "Reportes de consumo"
    When selecciona el rango de fechas y formato de salida (PDF o CSV)
    Then la aplicación genera un archivo descargable con los datos detallados

  Scenario: Validación del reporte
    Given el usuario descarga el archivo
    When abre el documento
    Then el reporte muestra gráficos, totales, fechas y sello digital de autenticidad