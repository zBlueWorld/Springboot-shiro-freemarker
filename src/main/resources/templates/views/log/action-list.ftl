<!--
*
*  INSPINIA - Responsive Admin Theme
*  version 2.8
*
-->

<!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title>Tomato Admin</title>

		<link href="../../../static/css/bootstrap.min.css" rel="stylesheet">
		<link href="../../../static/font-awesome/css/font-awesome.css" rel="stylesheet">

		<!-- Toastr style -->
		<link href="../../../static/css/plugins/toastr/toastr.min.css" rel="stylesheet">

		<!-- Gritter -->
		<link href="../../../static/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

		<link href="../../../static/css/animate.css" rel="stylesheet">
		<link href="../../../static/css/style.css" rel="stylesheet">
		<!-- FooTable -->
		<link href="../../../static/css/plugins/footable/footable.core.css" rel="stylesheet">

		<link href="../../../static/css/animate.css" rel="stylesheet">
		<link href="../../../static/css/style.css" rel="stylesheet">

	</head>

	<body>
		<div id="wrapper">
			 <#include "../asider.ftl"/>

			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">

						<div class="col-lg-12">
							<div class="panel panel-info">
								<div class="panel-heading">
									<i class=""></i>
									<h3>欢迎使用本系统</h3>
								</div>
								<div class="panel-body">
									<table class="footable table table-stripped toggle-arrow-tiny">
										<thead>
										<tr>

											<th data-toggle="true">用户名</th>
											<th>模块</th>
											<th>方法</th>
											<th data-hide="all">参数</th>
											<th data-hide="all">结果</th>
											<th data-hide="all">错误</th>
											<th>花费时间</th>

										</tr>
										</thead>
										<tbody>
										<#list actionLogList as login>
											<tr>
												<td>${login.username!}</td>
												<td>${login.item}</td>
												<td>${login.method}</td>
												<td>${login.params!}</td>
												<td>${login.result!"无"}</td>
												<td>${login.error!"无"}</td>
												<td>${login.actionTime?string}</td>
												<td><a href="/log/action/delete/${login.actionId}" <button class="btn btn-warning " type="button"><i class="fa fa-warning"></i> <span class="bold">删除</span></button></td>
											</tr>
										</#list>

										</tbody>
										<tfoot>
										<tr>
											<td colspan="10">
												<ul class="pagination float-right"></ul>
											</td>
										</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>


				</nav>
			</div>
				<#include "../footer.ftl"/>
		</div>

		</div>
		<!-- Mainly scripts -->
		<script src="../../../static/js/jquery-3.1.1.min.js"></script>
		<script src="../../../static/js/popper.min.js"></script>
		<script src="../../../static/js/bootstrap.js"></script>
		<script src="../../../static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
		<script src="../../../static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

		<!-- Flot -->
		<script src="../../../static/js/plugins/flot/jquery.flot.js"></script>
		<script src="../../../static/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
		<script src="../../../static/js/plugins/flot/jquery.flot.spline.js"></script>
		<script src="../../../static/js/plugins/flot/jquery.flot.resize.js"></script>
		<script src="../../../static/js/plugins/flot/jquery.flot.pie.js"></script>

		<!-- Peity -->
		<script src="../../../static/js/plugins/peity/jquery.peity.min.js"></script>
		<script src="../../../static/js/demo/peity-demo.js"></script>

		<!-- Custom and plugin javascript -->
		<script src="../../../static/js/inspinia.js"></script>
		<script src="../../../static/js/plugins/pace/pace.min.js"></script>

		<!-- jQuery UI -->
		<script src="../../../static/js/plugins/jquery-ui/jquery-ui.min.js"></script>

		<!-- GITTER -->
		<script src="../../../static/js/plugins/gritter/jquery.gritter.min.js"></script>

		<!-- Sparkline -->
		<script src="../../../static/js/plugins/sparkline/jquery.sparkline.min.js"></script>

		<!-- Sparkline demo data  -->
		<script src="../../../static/js/demo/sparkline-demo.js"></script>

		<!-- ChartJS-->
		<script src="../../../static/js/plugins/chartJs/Chart.min.js"></script>

		<!-- Toastr -->
		<script src="../../../static/js/plugins/toastr/toastr.min.js"></script>
		<!-- FooTable -->
		<script src="../../../static/js/plugins/footable/footable.all.min.js"></script>
		<!-- Page-Level Scripts -->
		<script>
			$(document).ready(function() {

				$('.footable').footable();
				$('.footable2').footable();

			});
		</script>

	</body>
</html>
