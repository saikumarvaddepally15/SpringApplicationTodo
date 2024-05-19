<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/navigation.jspf"%>
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
	<%@ include file="common/footer.jspf" %>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#targetDate').datepicker({
				format : 'yyyy-mm-dd'
			});
		});
	</script>
</body>
</html>
