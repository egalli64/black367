package srv;

import java.io.IOException;
//import java.time.LocalTime;

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

	@Resource(name = "jdbc/black")
	private DataSource ds;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user = request.getParameter("user");
		String password = request.getParameter("password");

		try (UserDAO dao = new UserDAO(ds)) {

			if (dao.userExists(user)) {
				LOG.info("User " + user + " IS in the database");
				if (dao.verify(user, password) != null) {
					LOG.info("Provided password IS correct");
					request.setAttribute("user", user);
					HttpSession session = request.getSession();
					session.setAttribute("user", user);
					session.setAttribute("logged", true);
//				LocalTime start = (LocalTime) session.getAttribute("start");
					RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
					rd.forward(request, response);
				} else {
					LOG.info("Provided password is NOT correct");
					boolean wrongPsw = true;
					request.setAttribute("wrongPsw", wrongPsw);	//
					RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
					rd.forward(request, response);
				}
			} else {
				LOG.info("User " + user + " is NOT in the database");
				boolean wrongUser = true;
				request.setAttribute("wrongUser", wrongUser);
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
