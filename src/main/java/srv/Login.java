package srv;

import java.io.IOException;
import java.time.LocalTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = request.getParameter("user");
		String password = request.getParameter("password");
		request.setAttribute("user", user);
//		request.setAttribute("password", password);
		
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		session.setAttribute("password", password);
		
//		LocalTime start = (LocalTime) session.getAttribute("start");

		if ((user != null) && (!user.isEmpty()) && (password != null) && (!password.isEmpty())) {
			RequestDispatcher rd = request.getRequestDispatcher("/index_bis.jsp");
			rd.forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}