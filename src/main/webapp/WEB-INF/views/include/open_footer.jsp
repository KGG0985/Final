<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<script src="<%=request.getContextPath()%>/resources/vendor/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendor/bootstrap-datetimepicker/js/moment.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendor/chart.js/Chart.bundle.min.js"></script>
   	<script src="<%=request.getContextPath()%>/resources/vendor/jqueryui/js/jquery-ui.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/peity/jquery.peity.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendor/fullcalendar/js/main.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendor/moment/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/global/global.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/dashboard/dashboard-1.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/deznav-init.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/custom.min.js"></script>
<%-- 	<script src="<%=request.getContextPath()%>/resources/vendor/apexchart/apexchart.js"></script> --%>
	<script>
		$(function () {
			$('#datetimepicker1').datetimepicker({
				inline: true,
			});
		});
	</script>
</body>
</html>