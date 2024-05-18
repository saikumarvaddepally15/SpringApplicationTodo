<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Login Page</title>
</head>
<body>
	<div class="container">
		<h1>Welcome to ToDo ADD</h1>
		<form:form method="post" modelAttribute="todo">
			Description: <form:input type="text" path="description"/> 
			<form:errors  path="description" cssClass="text-warning"/> 
			 <form:input type="hidden" path="id"/> 
			 <form:input type="hidden" path="done"/> 
			 <input type="submit" class="btn-success">
		</form:form>
	</div>

</body>
</html>