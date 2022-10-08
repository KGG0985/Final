<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Welly - Hospital Bootstrap Admin Dashboard</title>
	<!-- Favicon icon -->
	<link rel="icon" type="image/png" sizes="16x16" href="./images/favicon.png">
	
	<link href="../../../resources/vendor/fullcalendar/css/main.css" rel="stylesheet">
	<link href="../../../resources/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
	<link href="../../../resources/vendor/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<link href="../../../resources/css/style.css" rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap"
		rel="stylesheet">

<script>
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      height: '100%',
	  locale: "ko",
      expandRows: true,
      slotMinTime: '08:00',
      slotMaxTime: '20:00',
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
      },
      initialView: 'dayGridMonth',
      initialDate: '2022-10-12',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      selectable: true,
      nowIndicator: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: []
    });
    

    calendar.render();
  });

</script>		
</head>

<body>


	
	<!--**********************************
        Main wrapper start
    ***********************************-->
	<div id="main-wrapper">


		<!--**********************************
            Content body start
        ***********************************-->

		<div class="container-fluid">

			<div class="row">
				<div class="col-xl-10">
						<div id='calendar'></div>
				</div>
				<div class="col-xl-2">
					<div><input type='text' class="form-control d-none" id='datetimepicker1' /></div>
							
						<H5>▶접수목록</H5>
						<table class="col-xl-8">
								<thead>
									<tr>
										<th>상태</th>
										<th>이름</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><span class="badge badge-danger">검진대기</span>
										</td>
										<td>곽프로</td>
									</tr>
									<tr>
										<td><span class="badge badge-danger">검진대기</span>
										</td>
										<td>김프로</td>
									</tr>
									<tr>
										<td><span class="badge badge-success">검진중</span>
										</td>
										<td>이프로</td>
									</tr>
									<tr>
										<td><span class="badge badge-success">검진중</span>
										</td>
										<td>기프로</td>
									</tr>
									<tr>
										<td><span class="badge badge-success">검진중</span>
										</td>
										<td>양프로</td>
									</tr>
								</tbody>
							</table>
						</div>
				
				
			</div>

		</div>

		<!--**********************************
            Content body end
        ***********************************-->



	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<!--**********************************
        Scripts
    ***********************************-->
	<!-- Required vendors -->
	<script src="../../../resources/vendor/global/global.min.js"></script>
	<script src="../../../resources/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="../../../resources/js/custom.min.js"></script>
	<script src="../../../resources/js/deznav-init.js"></script>

	<!--removeIf(production)-->

	<script src="../../../resources/vendor/jqueryui/js/jquery-ui.min.js"></script>
	<script src="../../../resources/vendor/moment/moment.min.js"></script>

	<script src="../../../resources/vendor/fullcalendar/js/main.js"></script>
	
	<script src="../../../resources/vendor/bootstrap-datetimepicker/js/moment.js"></script>
	<script src="../../../resources/vendor/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	
	
	
</body>
<script>
	$(function () {
		$('#datetimepicker1').datetimepicker({
			inline: true,
		});
	});
</script>

</html>