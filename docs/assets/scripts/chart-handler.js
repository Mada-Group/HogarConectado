// Variable global para almacenar los datos completos
let fullConsumoData = null;
// Variables para mantener las instancias de los gráficos
let dailyChartInstance = null;
let monthlyChartInstance = null;

function renderFilteredData(filter) {
    if (!fullConsumoData) return; // No hacer nada si los datos no se han cargado

    let filteredDesglose;
    if (filter === 'hogar') {
        filteredDesglose = fullConsumoData.desglose.filter(d => d.categoria === 'hogar');
    } else if (filter === 'negocio') {
        filteredDesglose = fullConsumoData.desglose.filter(d => d.categoria === 'negocio');
    } else {
        // 'todo'
        filteredDesglose = fullConsumoData.desglose;
    }

    // 2. Recalcular los resúmenes (diario y semanal)
    const totalKwh = filteredDesglose.reduce((sum, device) => sum + device.kwh, 0);
    // Asumimos que el "desglose" es el consumo diario.
    const dailyTotal = totalKwh;
    const weeklyTotal = totalKwh * 7; // Simulación

    // 3. Actualizar las cards
    document.getElementById('daily-val').innerText = dailyTotal.toFixed(1) + ' kWh';
    document.getElementById('weekly-val').innerText = weeklyTotal.toFixed(1) + ' kWh';
    // El ahorro lo dejamos estático del JSON, ya que no se puede recalcular
    document.getElementById('save-val').innerText = fullConsumoData.resumen.ahorro + '%';

    // 4. Actualizar la lista de desglose
    const devList = document.getElementById('device-list');
    devList.innerHTML = ''; // Limpiar lista
    if (filteredDesglose.length > 0) {
        filteredDesglose.forEach(d => {
            const li = document.createElement('li');
            li.innerText = d.nombre + ' - ' + d.kwh + ' kWh';
            devList.appendChild(li);
        });
    } else {
        devList.innerHTML = '<li>No hay dispositivos en esta categoría.</li>';
    }

    // 5. Lógica de Alertas (ahora basada en datos filtrados)
    const alertSection = document.getElementById('alert-section');
    const dailyKwh = dailyTotal;
    let alertMessages = [];

    if (dailyKwh > 10) {
        alertMessages.push(`¡Alerta! Tu consumo (${dailyKwh} kWh) es más alto de lo normal para esta vista.`);
    }

    const highDevice = filteredDesglose.find(d => d.kwh > 3);
    if (highDevice) {
        alertMessages.push(`El dispositivo "${highDevice.nombre}" está consumiendo ${highDevice.kwh} kWh.`);
    }

    if (alertMessages.length > 0) {
        alertSection.style.display = 'block';
        alertSection.innerHTML = '<h3>Alertas Importantes</h3>';
        const ul = document.createElement('ul');
        alertMessages.forEach(msg => {
            const li = document.createElement('li');
            li.innerText = msg;
            ul.appendChild(li);
        });
        alertSection.appendChild(ul);
    } else {
        alertSection.style.display = 'none';
    }

    // 6. Actualizar el estado 'active' de los botones de filtro
    document.getElementById('filter-todo').classList.toggle('active-filter', filter === 'todo');
    document.getElementById('filter-hogar').classList.toggle('active-filter', filter === 'hogar');
    document.getElementById('filter-negocio').classList.toggle('active-filter', filter === 'negocio');

    // Guardar el filtro en localStorage para persistencia
    localStorage.setItem('hc_filter', filter);
}

//Carga los datos y configura los gráficos (solo una vez)
async function initCharts(){
    try {
        const resp = await fetch('assets/data/consumo.json');
        fullConsumoData = await resp.json();

        // ---- Configurar Gráficos (se crean una sola vez) ----
        // Gráfico diario
        const ctx = document.getElementById('chart-daily').getContext('2d');
        const daily = fullConsumoData.consumo_diario;
        const labels = daily.map((v,i)=> (i+6)+'am');
        if (dailyChartInstance) dailyChartInstance.destroy(); // Destruir si ya existe
        dailyChartInstance = new Chart(ctx, { type:'line', data:{ labels, datasets:[{label:'kWh (Total)', data:daily, fill:true, tension:0.3}]}, options:{responsive:true}});

        // Gráfico mensual
        const ctx2 = document.getElementById('chart-monthly').getContext('2d');
        if (monthlyChartInstance) monthlyChartInstance.destroy(); // Destruir si ya existe
        monthlyChartInstance = new Chart(ctx2, { type:'line', data:{ labels:fullConsumoData.meses, datasets:[{label:'kWh (Total)', data:fullConsumoData.consumo_mensual, fill:false, tension:0.2}]}, options:{responsive:true}});

        // ---- Configurar Event Listeners para los filtros ----
        document.getElementById('filter-todo').addEventListener('click', () => {
            renderFilteredData('todo');
        });
        document.getElementById('filter-hogar').addEventListener('click', () => {
            renderFilteredData('hogar');
        });
        document.getElementById('filter-negocio').addEventListener('click', () => {
            renderFilteredData('negocio');
        });

        // ---- Renderizar datos por primera vez ----
        const savedFilter = localStorage.getItem('hc_filter') || 'todo';
        renderFilteredData(savedFilter);

    } catch(err) {
        console.error(err);
    }
}

document.addEventListener('DOMContentLoaded', () => {
    if(document.getElementById('chart-daily')) {
        initCharts();
    }
});