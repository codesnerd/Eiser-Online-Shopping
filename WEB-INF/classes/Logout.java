import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Logout extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Logout Confirmation</title><head>");
		out.println("<body>");
		
		HttpSession session = request.getSession(false);
		
		if (session == null)
		{
            RequestDispatcher rd = request.getRequestDispatcher("notsignedin.jsp");
            rd.forward(request, response);
		}
		else
		{
            session.invalidate();
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
		}
	}
}