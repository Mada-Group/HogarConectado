async function initRecomendaciones() {
    try {
        const resp = await fetch('assets/data/consumo.json');
        if (!resp.ok) throw new Error('No se pudo cargar el archivo de consumo');

        const data = await resp.json();
        const recommendationsList = document.getElementById('recommendations-list');

        if (!recommendationsList) return;

        let recommendations = [];

        // 1. Recomendación basada en el ahorro general
        if (data.resumen.ahorro < 15) {
            recommendations.push({
                title: 'Optimiza tu Ahorro General',
                desc: `Tu porcentaje de ahorro actual es del <strong>${data.resumen.ahorro}%</strong>. Intenta apagar dispositivos en standby y usa iluminación LED para mejorar este número.`
            });
        }

        // 2. Recomendación basada en el dispositivo de mayor consumo
        // Buscamos el dispositivo con el kwh más alto
        const highDevice = data.desglose.reduce((prev, current) => {
            return (prev.kwh > current.kwh) ? prev : current;
        });

        if (highDevice) {
            recommendations.push({
                title: `Optimiza el uso de tu ${highDevice.nombre}`,
                desc: `Tu <strong>${highDevice.nombre}</strong> es el dispositivo que más consume (${highDevice.kwh} kWh). ${getDeviceTip(highDevice.nombre)}`
            });
        }

        // 3. Recomendación general
        recommendations.push({
            title: 'Revisa tu Iluminación',
            desc: 'La iluminación representa <strong>1.5 kWh</strong> de tu consumo. ¿Estás usando focos ahorradores o LED? Apaga las luces en habitaciones que no estés usando.'
        });


        // Renderizar las recomendaciones
        recommendationsList.innerHTML = '';
        recommendations.forEach(rec => {
            const card = document.createElement('div');
            card.className = 'card'; // Reutilizamos el estilo de .card
            card.innerHTML = `
        <h3>${rec.title}</h3>
        <p>${rec.desc}</p>
      `;
            recommendationsList.appendChild(card);
        });

    } catch (err) {
        console.error('Error al cargar recomendaciones:', err);
        const recommendationsList = document.getElementById('recommendations-list');
        if (recommendationsList) {
            recommendationsList.innerHTML = '<p>No se pudieron cargar las recomendaciones.</p>';
        }
    }
}

/**
 * Devuelve un consejo simple basado en el nombre del dispositivo
 */
function getDeviceTip(deviceName) {
    const name = deviceName.toLowerCase();
    if (name.includes('refrigeradora')) {
        return 'Asegúrate de que los sellos de la puerta estén en buen estado y no la dejes abierta.';
    }
    if (name.includes('tv')) {
        return 'Evita dejarla en modo "standby" por largos periodos. Es mejor apagarla desde el interruptor.';
    }
    if (name.includes('microondas')) {
        return 'Desconéctalo cuando no esté en uso, ya que el reloj digital también consume energía.';
    }
    return 'Revisa su configuración de eficiencia energética.';
}


document.addEventListener('DOMContentLoaded', initRecomendaciones);