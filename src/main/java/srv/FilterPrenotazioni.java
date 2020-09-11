package srv;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;



@WebFilter(urlPatterns = { "/prenotazioni.jsp" })
public class FilterPrenotazioni implements Filter {
	private static final Logger LOG = LoggerFactory.getLogger(FilterPrenotazioni.class);

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		if (request instanceof HttpServletRequest) {
            boolean logged = false;
            try {
                HttpSession session = ((HttpServletRequest) request).getSession();
                LOG.trace("Filter working...");
                Boolean attribute = (Boolean) session.getAttribute("logged");
                if (attribute != null && attribute == true) {
                    logged = true;
                }

                //session.setAttribute("logged", false);
            } catch (Exception ex) {
                LOG.error(ex.getMessage());
            }

            LOG.info("Access to area PRENOTAZIONI: " + logged);
            if (!logged) {
                HttpServletResponse hsResponse = (HttpServletResponse) response;
                LOG.info("Redirecting to login area");
                hsResponse.sendRedirect("/black367/login.jsp");
                return;
            }
        }
        
        LOG.info("Access to the list of services");
		
		chain.doFilter(request, response);
	}


}
