<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="styles/reset.css" />
<link rel="stylesheet" href="styles/header.css" />
<link rel="stylesheet" href="styles/footer.css" />
<link rel="stylesheet" href="styles/sidebar.css" />
<link rel="stylesheet" href="styles/dashboard.css" />
<link rel="stylesheet" href="styles/dashboard-widget.css" />
<link rel="stylesheet" href="styles/dashboard-graphs.css" />
</head>
<body>

	<%@ include file="components/header.jsp"%>
	<%@ include file="components/sidebar.jsp"%>

	<!-- PURO HARDCODED MUNA -->
	<main id="dashboard-main-container">
		<div class="scrollable-main">

			<!-- <section id="filter-dashboard"></section> -->

			<section id="widgets">
				<article class="widget-module" id="total-orders">
					<div class="widget-information">
						<div class="widget-header">
							<img class="widget-icon"
								src="assets/dashboard/widgets/total-orders.svg">
							<h3 class="widget-title">Total orders</h3>
						</div>
						<div class="widget-data">
							<h1 class="widget-data-number">342</h1>
							<span class="widget-data-trend"> <span
								class="upward-symbol"></span> <span class="upward-text">4.2%</span>
								<span class="widget-data-range">from last month</span>
							</span>
						</div>
					</div>
					<a href="" class="view-detail-btn"> <span
						class="view-detail-text">View detail</span> <span
						class="view-detail-icon"></span>
					</a>
				</article>

				<article class="widget-module" id="total-orders">
					<div class="widget-information">
						<div class="widget-header">
							<img class="widget-icon" src="assets/dashboard/widgets/sales.svg">
							<h3 class="widget-title">Total Monthly Sale</h3>
						</div>
						<div class="widget-data">
							<h1 class="widget-data-number">$1,290</h1>
							<span class="widget-data-trend"> <span
								class="upward-symbol"></span> <span class="upward-text">2.2%</span>
								<span class="widget-data-range">from last month</span>
							</span>
						</div>
					</div>
					<a href="" class="view-detail-btn"> <span
						class="view-detail-text">View detail</span> <span
						class="view-detail-icon"></span>
					</a>
				</article>

				<article class="widget-module" id="total-orders">
					<div class="widget-information">
						<div class="widget-header">
							<img class="widget-icon" src="assets/dashboard/widgets/sales.svg">
							<h3 class="widget-title">Net sales</h3>
						</div>
						<div class="widget-data">
							<h1 class="widget-data-number">$1,940</h1>
							<span class="widget-data-trend"> <span
								class="upward-symbol"></span> <span class="upward-text">4.0%</span>
								<span class="widget-data-range">from last month</span>
							</span>
						</div>
					</div>
					<a href="" class="view-detail-btn"> <span
						class="view-detail-text">View detail</span> <span
						class="view-detail-icon"></span>
					</a>
				</article>

				<article class="widget-module" id="total-orders">
					<div class="widget-information">
						<div class="widget-header">
							<img class="widget-icon"
								src="assets/dashboard/widgets/canceled-orders.svg">
							<h3 class="widget-title">Cancelled orders</h3>
						</div>
						<div class="widget-data">
							<h1 class="widget-data-number">12</h1>
							<span class="widget-data-trend"> <span
								class="downward-symbol"></span> <span class="downward-text">1.5%</span>
								<span class="widget-data-range">from last month</span>
							</span>
						</div>
					</div>
					<a href="" class="view-detail-btn"> <span
						class="view-detail-text">View detail</span> <span
						class="view-detail-icon"></span>
					</a>
				</article>
			</section>

			<section id="graphs">
				<article id="line-graph">
					<h3 class="graph-title">Weekly sales report</h3>
					<canvas id="weekly-sales-chart" height="400"></canvas>
					<!-- <div id="line-graph-"></div>  -->
				</article>

				<article id="bar-graph">
					<h3 class="graph-title">Hourly sales report</h3>
					<canvas id="hourly-sales-chart" height="400"></canvas>
				</article>
			</section>
		</div>
	</main>

	<%@ include file="components/footer.jsp"%>

	<script src="javascript/header-state.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script src="javascript/monthly-sales.js"></script>
	<script src="javascript/hourly-sales.js"></script>
</body>
</html>