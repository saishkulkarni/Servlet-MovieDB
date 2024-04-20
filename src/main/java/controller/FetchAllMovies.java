package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MovieDao;
import dto.Movie;

@WebServlet("/fetch-movies")
public class FetchAllMovies extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MovieDao dao = new MovieDao();
		List<Movie> list = dao.fetchMovies();
		if (list.isEmpty()) {
			resp.getWriter().print("<h1 style='color:red' align='center'>No Movies Found</h1>");
			req.getRequestDispatcher("home.html").include(req, resp);
		} else {
			req.setAttribute("list", list);
			req.getRequestDispatcher("fetch.jsp").forward(req, resp);
		}
	}

}
