package srv;

import java.io.IOException;
import java.time.LocalDate;

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

@WebServlet("/registration-container")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOG = LoggerFactory.getLogger(Login.class);

	@Resource(name = "jdbc/black")
	private DataSource ds;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("nome");
		String lastName = request.getParameter("cognome");
		LocalDate birthDate = LocalDate.parse(request.getParameter("data"));
		char gender = (request.getParameter("sesso")).charAt(0);
		String city = request.getParameter("citta");
		String mail = request.getParameter("email");
		String username = request.getParameter("usr_reg");
		String password = request.getParameter("psw_reg");

		try (UserDAO dao = new UserDAO(ds)) {

			if (!dao.userExists(username)) {
				LOG.info("User " + username + " IS NOT in the database");
				User newUser = new User();
				newUser.setFirstName(firstName);
				newUser.setLastName(lastName);
				newUser.setBirth(birthDate);
				newUser.setGender(gender);
				newUser.setCity(city);
				newUser.setMail(mail);
				newUser.setUsername(username);
				newUser.setPassword(password);

				dao.insertUser(newUser);
				HttpSession session = request.getSession();
				session.setAttribute("user", username);
				session.setAttribute("logged", true);
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
				rd.forward(request, response);

			} else {
				LOG.info("User " + username + " IS ALREADY in the database");
				boolean userAlreadyExists = true;
				request.setAttribute("userAlreadyExists", userAlreadyExists); //
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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
