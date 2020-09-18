package srv;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
 * Servlet implementation class ListaEsami
 */
@WebServlet("/listaEsami")
public class ListaEsami extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOG = LoggerFactory.getLogger(ListaEsami.class);

	@Resource(name = "jdbc/black")
	private DataSource ds;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String hospitalName = request.getParameter("hospitalName");
		request.setAttribute("hospitalName", hospitalName);

		try (ExamDAO dao = new ExamDAO(ds)) {
			
			LOG.info("Tentativo di creare lista esami per Ospedale " + hospitalName);
			List<Exam> examsList = new ArrayList<Exam>();
			examsList = dao.getExams(hospitalName);
			
			HttpSession session = request.getSession();
			session.setAttribute("examsList", examsList);

			RequestDispatcher rd = request.getRequestDispatcher("/listaesami.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
