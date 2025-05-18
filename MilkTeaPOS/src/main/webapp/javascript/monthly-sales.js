// Generate last 7 days for x-axis
function getLast7DaysLabels() {
	const labels = [];
	const today = new Date();
	for (let i = 6; i >= 0; i--) {
		const date = new Date();
		date.setDate(today.getDate() - i);
		labels.push(date.toLocaleDateString('en-US', { month: 'short', day: 'numeric' }));
	}
	return labels;
}

const weeklyLabels = getLast7DaysLabels();
const weeklySalesData = [150, 200, 175, 220, 180, 250, 300]; // 7 points

const weeklyCtx = document.getElementById('weekly-sales-chart').getContext('2d');
new Chart(weeklyCtx, {
	type: 'line',
	data: {
		labels: weeklyLabels,
		datasets: [{
			label: 'Sales ($)',
			data: weeklySalesData,
			borderColor: '#36A2EB',
			backgroundColor: 'rgba(54, 162, 235, 0.2)',
			fill: true,
			tension: 0.3,
			pointRadius: 4,
			pointHoverRadius: 6
		}]
	},
	options: {
		responsive: true,
		maintainAspectRatio: true,
		plugins: {
			title: {
				display: false // no chart title
			},
			legend: {
				display: true,
				labels: {
					color: '#828487'
				}
			}
		},
		scales: {
			y: {
				beginAtZero: true,
				border: {
				  color: '#828487'
				},
				grid: {
					display: false
				},
				ticks: {
					color: '#828487'
				},
				title: {
					display: true,
					text: 'Amount (PHP)',
					color: '#828487'
				}
			},
			x: {
				border: {
				  color: '#828487'
				},
				grid: {
					display: false
				},
				ticks: {
					color: '#828487'
				},
				title: {
					display: true,
					text: 'Date',
					color: '#828487'
				}
			}
		}
	}
});