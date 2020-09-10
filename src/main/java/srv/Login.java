package srv;

import java.io.IOException;
import java.time.LocalTime;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOG = LoggerFactory.getLogger(Login.class);

	@Resource(name = "jdbc/me")
	private DataSource ds;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user = request.getParameter("user");
		String password = request.getParameter("password");

		try (UserDAO dao = new UserDAO(ds)) {
			request.setAttribute("user", dao.getAll());

			if (dao.verify(user, password) != null) {
				LOG.info("User " + user + " IS in the database");
				request.setAttribute("user", dao.verify(user,password));
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				session.setAttribute("logged", true);
				LocalTime start = (LocalTime) session.getAttribute("start");
				RequestDispatcher rd = request.getRequestDispatcher("/index_bis.jsp");
				rd.forward(request, response);
			} else {
				LOG.info("User " + user + " is NOT in the database");
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
