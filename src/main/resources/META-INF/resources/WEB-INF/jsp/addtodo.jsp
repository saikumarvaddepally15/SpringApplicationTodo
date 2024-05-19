<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css"
	rel="stylesheet">
<title>Add ToDo</title>
</head>
<body>
	<div class="container">
		<h1>Welcome to ToDo Add</h1>
		<form:form method="post" modelAttribute="todo">
			<fieldset class="mb-3">
				<form:label path="description">Description</form:label>
				<form:input path="description" required="true"
					cssClass="form-control" />
				<form:errors path="description" cssClass="text-warning" />
			</fieldset>
			<fieldset class="mb-3">
				<form:label path="targetDate">Target Date</form:label>
				<form:input path="targetDate" required="true"
					cssClass="form-control" id="targetDate" />
				<form:errors path="targetDate" cssClass="text-warning" />
			</fieldset>
			<input type="submit" value="Add" class="btn btn-success" />
			<form:hidden path="id" />
			<form:hidden path="done" />
		</form:form>
	</div>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script
		src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#targetDate').datepicker({
				format : 'yyyy-mm-dd'
			});
		});
	</script>
</body>
</html>
