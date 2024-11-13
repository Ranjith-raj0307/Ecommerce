

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Adminlogin
 */
public class Adminlogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("n1");
		String b=request.getParameter("n2");	
	
	if(a.equals("admin") && b.equals("admin"))
	{
		response.sendRedirect("adminhome.jsp");
	}
	else
	{
		response.sendRedirect("adminlogin.jsp");

	}
	}
	

}
