// Generate last 12 hour labels (excluding current hour)
function getLast12HourLabels() {
  const labels = [];
  const now = new Date();
  now.setMinutes(0, 0, 0); // truncate to top of the hour

  for (let i = 12; i >= 1; i--) {
    const pastHour = new Date(now);
    pastHour.setHours(now.getHours() - i);
    const hour = pastHour.getHours();
    const ampm = hour >= 12 ? 'PM' : 'AM';
    const hour12 = hour % 12 === 0 ? 12 : hour % 12;
    labels.push(`${hour12} ${ampm}`);
  }
  return labels;
}

const hourlyLabels = getLast12HourLabels();
const hourlySalesData = [10, 15, 12, 18, 22, 19, 25, 30, 28, 24, 20, 26]; // 12 values

const hourlyCtx = document.getElementById('hourly-sales-chart').getContext('2d');
new Chart(hourlyCtx, {
  type: 'bar',
  data: {
    labels: hourlyLabels,
    datasets: [{
      label: 'Sales ($)',
      data: hourlySalesData,
      backgroundColor: 'rgba(75, 192, 192, 0.6)',
      borderColor: 'rgba(75, 192, 192, 1)',
      borderWidth: 1,
      borderRadius: 4
    }]
  },
  options: {
    responsive: true,
    maintainAspectRatio: true,
    plugins: {
      title: {
        display: false
      },
      legend: {
        display: true,
        labels: {
          color: '#828487'
        }
      }
    },
    scales: {
      x: {
        grid: {
          display: false
        },
        ticks: {
          color: '#828487'
        },
        title: {
          display: true,
          text: 'Hour',
          color: '#828487'
        },
        border: {
          color: '#828487'
        }
      },
      y: {
        beginAtZero: true,
        grid: {
          display: false
        },
        ticks: {
          color: '#828487'
        },
        title: {
          display: true,
          text: 'Sales ($)',
          color: '#828487'
        },
        border: {
          color: '#828487'
        }
      }
    }
  }
});
