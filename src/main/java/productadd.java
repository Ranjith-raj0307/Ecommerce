import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.io.*;

public class productadd extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		String b=request.getParameter("n2");
		String c=request.getParameter("n3");
		String d=request.getParameter("n4");
		String e=request.getParameter("n5");
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/besantproject","root","Ranjith@0307");
	        Statement st=con.createStatement();
	        st.executeUpdate("insert into padd1(pname,price,stock,photo) values('"+b+"','"+c+"','"+d+"','"+e+"')");
	        response.sendRedirect("adminhome.jsp"); 
			
		}
		catch(Exception e1)
		{
			pw.println(e1);
		}
		
	}

}