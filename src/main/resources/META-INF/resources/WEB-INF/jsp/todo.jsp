<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<title>Login Page</title>
</head>
<body>
	<div calss="container">
		<div>Hi ${name}</div>

		<h1>Your Todos</h1>
		<table class="table">
			<thead>
				<th>id</th>
				<th>description</th>
				<th>TargetDate</th>
				<th>Done</th>

			</thead>
			<tbody>

				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.id}</td>
						<td>${todo.description}</td>
						<td>${todo.targetDate}</td>
						<td>${todo.done}</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	<a href="AddToDos" class="btn btn-success">AddToDos</a>
</body>
</html>

