import java.io.*; //for input output
import java.sql.*; //for jdbc
import javax.servlet.*; //for servlets
import javax.servlet.http.*; //for servlets
//import javax.swing.text.html.HTML;

public class DeleteProfile extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(false); 
        
        if (session == null)
        {
            RequestDispatcher rd = request.getRequestDispatcher("notsignedin.jsp");
            rd.forward(request, response);
        }
            else
        {
            String email = (String)session.getAttribute("mail");
            String password = request.getParameter("password");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1/class_test";
                Connection con = DriverManager.getConnection(url, "root", "root");

                Statement st = con.createStatement();
                
                String search_query = "SELECT * FROM eshop WHERE (Email = '" + email + "' AND PASSWORD = '" + password + "')";
                System.out.println(search_query);
                ResultSet srs = st.executeQuery(search_query);

                if(srs.next())
                {
                    String query = "DELETE FROM eshop WHERE (Email = '" + email +"');";
                    System.out.println(query);
                    int rs = st.executeUpdate(query);
        
                    if(rs == 1)
                    {
                        session.invalidate();
                        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                        rd.forward(request, response);
                    }
                    else
                    {
                        out.println("<h1>Sorry, there was an error processing your request.</h1>");
                    }
                }
                else
                {
                    RequestDispatcher rd = request.getRequestDispatcher("error404.jsp");
                    rd.forward(request, response);
                }

                st.close();
                con.close();

            }
            catch(Exception e)
            {
                out.println(e);
            }
        }
	}
}