import java.io.*; //for input output
import java.sql.*; //for jdbc
import java.util.*; //for ArrayList
import javax.servlet.*; //for servlets
import javax.servlet.http.*; //for servlets

public class Login extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();

		String email = request.getParameter("mail");
		String password = request.getParameter("password");

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://127.0.0.1/class_test";
			Connection con = DriverManager.getConnection(url, "root", "root");

			Statement st = con.createStatement();

			String query = "SELECT * FROM eshop WHERE (Email = '" + email + "' AND Password = '" + password + "')" ;
			System.out.println(query);
			ResultSet rs = st.executeQuery(query);

			if(rs.next())
			{
				HttpSession session = request.getSession();
				ArrayList <String> cart = new ArrayList<>();
				ArrayList <String> cost = new ArrayList<>();

				session.setAttribute("mail", email);
				session.setAttribute("MyCart", cart);
				session.setAttribute("MyPrice", cost);

				RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
				rd.forward(request, response);
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