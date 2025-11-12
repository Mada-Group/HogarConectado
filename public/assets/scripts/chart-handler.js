// Loads assets/data/consumo.json and renders charts
async function initCharts(){
  try{
    const resp = await fetch('assets/data/consumo.json');

    const data = await resp.json();

    // daily chart
    const ctx = document.getElementById('chart-daily').getContext('2d');

    const daily = data.consumo_diario;

    const labels = daily.map((v,i)=> (i+6)+'am');
 // sample labels
    new Chart(ctx, { type:'line', data:{ labels, datasets:[{label:'kWh', data:daily, fill:true, tension:0.3}]}, options:{responsive:true}});

    // monthly
    const ctx2 = document.getElementById('chart-monthly').getContext('2d');

    new Chart(ctx2, { type:'line', data:{ labels:data.meses, datasets:[{label:'kWh', data:data.consumo_mensual, fill:false, tension:0.2}]}, options:{responsive:true}});

    // fill stats and devices
    document.getElementById('daily-val').innerText = data.resumen.diario + ' kWh';

    document.getElementById('weekly-val').innerText = data.resumen.semanal + ' kWh';

    document.getElementById('save-val').innerText = data.resumen.ahorro + '%';

    const devList = document.getElementById('device-list');

    data.desglose.forEach(d=>{
      const li = document.createElement('li');

      li.innerText = d.nombre + ' - ' + d.kwh + ' kWh';

      devList.appendChild(li);

    });

  }catch(err){
    console.error(err);

  }
}
document.addEventListener('DOMContentLoaded', ()=>{ if(document.getElementById('chart-daily')) initCharts();
 });
