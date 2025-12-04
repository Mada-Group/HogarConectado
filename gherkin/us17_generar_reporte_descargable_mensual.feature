# US17.feature
Feature: Exportación de reportes (Generar reporte descargable mensual)

  Como dueño de un pequeño negocio en casa, 
  quiero descargar un reporte PDF con el detalle de mi consumo del mes (separado personal/negocio), 
  para incluirlo en mi contabilidad y declaraciones.

  Scenario: Generar PDF del mes actual
    Given que el usuario accede a "Reportes"
    When selecciona "Exportar mes actual" y confirma
    Then el sistema genera un PDF con: resumen ejecutivo, gráfico de consumo diario, tabla de dispositivos (top 10), comparativa con mes anterior, descargable en la carpeta "Descargas"

  Scenario: Reporte con logo personalizado (Premium)
    Given que el usuario tiene suscripción Premium
    When genera el reporte y activa "Incluir logo de mi negocio"
    Then el PDF incluye el logo cargado en configuración y está optimizado para impresión

  Scenario: Programar envío automático mensual
    Given que el usuario quiere recibir reportes sin recordatorios
    When configura "Enviar reporte automático cada 1ro del mes" con su email
    Then el sistema envía el PDF del mes anterior por correo cada 1ro de mes a las 8am