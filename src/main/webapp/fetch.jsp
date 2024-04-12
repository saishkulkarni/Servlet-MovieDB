<%@page import="dto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Movies</title>
</head>
<body>
	<%
	List<Movie> list = (List<Movie>) request.getAttribute("list");
	%>
	<h1 align="center">Movie Details</h1>
	<br>
	<div align="center">
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Image</th>
			<th>Language</th>
			<th>Genre</th>
			<th>Rating</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<%for(Movie movie:list){ %>
		<tr>
			<th><%=movie.getName() %></th>
			<th><img height="75px" width="75px" alt="<%=movie.getName() %>" src=""></th>
			<th><%=movie.getLanguage() %></th>
			<th><%=movie.getGenre() %></th>
			<th><%=movie.getRating() %></th>
			<th><button>Edit</button></th>
			<th><button>Delete</button></th>
		</tr>
		<%} %>
		
	</table>
	<br>
	<a href="home.html"><button>Back</button></a>
	</div>

</body>
</html>