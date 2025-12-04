async function initAparatos() {
    try {
        const resp = await fetch('assets/data/consumo.json');
        if (!resp.ok) {
            throw new Error('No se pudo cargar el archivo de consumo');
        }
        const data = await resp.json();
        const tableBody = document.getElementById('device-table-body');

        if (data.desglose && tableBody) {
            tableBody.innerHTML = '';
            data.desglose.forEach(device => {
                const row = document.createElement('tr');
                row.innerHTML = `
          <td>${device.nombre}</td>
          <td>${device.kwh} kWh</td>
          <td><span class="status-connected">Conectado</span></td>
          <td><button class="ghost">Ver detalle</button></td>
        `;

                tableBody.appendChild(row);
            });
        }

    } catch (err) {
        console.error('Error al cargar datos de aparatos:', err);
        const tableBody = document.getElementById('device-table-body');
        if (tableBody) {
            tableBody.innerHTML = '<tr><td colspan="4">No se pudieron cargar los datos.</td></tr>';
        }
    }
}

document.addEventListener('DOMContentLoaded', initAparatos);