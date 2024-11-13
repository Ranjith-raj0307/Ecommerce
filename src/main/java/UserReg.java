

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.io.*;
public class UserReg extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		String a=request.getParameter("n1");
		String b=request.getParameter("n2");
		String c=request.getParameter("n3");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/besantproject","root","Ranjith@0307");
	        Statement st=con.createStatement();
	        st.executeUpdate("insert into user values('"+a+"','"+b+"','"+c+"')");
	        response.sendRedirect("userlogin.jsp"); 
			
		}
		catch(Exception e)
		{
			pw.println(e);
		}
		
	}

}