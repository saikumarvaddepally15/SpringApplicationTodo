<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<body>
	<div class="container">
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
						<td><a href="delete-to-do?id=${todo.id}" class="btn btn-warning">DELETE</a></td>
						<td><a href="update-to-do?id=${todo.id}" class="btn btn-success">UPDATE</a></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		<a href="AddToDos" class="btn btn-success">AddToDos</a>
	</div>
	<%@ include file="common/footer.jspf" %>
</body>
</html>

