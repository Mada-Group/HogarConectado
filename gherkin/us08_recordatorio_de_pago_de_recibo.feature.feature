# US08.feature
Feature: Recordatorio de pago de recibo

  Como persona con negocio, 
  quiero recibir recordatorios antes de la fecha de vencimiento de mi recibo de luz, 
  para evitar cortes o pagos tardíos.

  Scenario: Envío de recordatorio
    Given el usuario se encuentra en el panel "Alertas y pagos"
    When agrega un recordatorio haciendo click en "Agregar Recordatorio" para el día anterior al vencimiento
    Then la app envía una notificación de aviso de pago

  Scenario: Pago realizado
    Given el usuario se encuentra en el panel "Alertas y pagos"
    When marca el recibo como "pagado"
    Then la app cancela el recordatorio automáticamente