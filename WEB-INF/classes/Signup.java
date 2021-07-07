import java.io.*; //for input output
import java.sql.*; //for jdbc
import javax.servlet.*; //for servlets
import javax.servlet.http.*; //for servlets

public class Signup extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();

		String fname = request.getParameter("fname");
		String email = request.getParameter("mail");
		String password = request.getParameter("password");
		String address = request.getParameter("address");

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://127.0.0.1/class_test";
			Connection con = DriverManager.getConnection(url, "root", "root");

			Statement st = con.createStatement();
			
			String search_query = "SELECT * FROM eshop WHERE (Email = '" + email + "')";
			System.out.println(search_query);
			ResultSet srs = st.executeQuery(search_query);

			if(srs.next())
			{
				RequestDispatcher rd = request.getRequestDispatcher("email_already_exists.jsp");
				rd.forward(request, response);
			}
			else
			{
				String query = "INSERT INTO eshop(Name, Email, Password, Address) VALUES('"+ fname + "', '" + email + "', '" + password + "', '" + address + "');";
				System.out.println(query);
				int rs = st.executeUpdate(query);

				if(rs == 1)
				{
					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);
				}
				else
				{
					RequestDispatcher rd = request.getRequestDispatcher("error404.jsp");
					rd.forward(request, response);
				}
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