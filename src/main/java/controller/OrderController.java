package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/order")
public class OrderController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession(false);
//		String p1=(String)session.getAttribute("name");
//		double price1=(double)session.getAttribute("price");
		
		
		String name=req.getParameter("foodName");
		System.out.println(name);
		double price=Double.parseDouble( req.getParameter("price"));
		
		if(session.getAttribute("username")!=null) {
			String username=(String)session.getAttribute("username");
			System.out.println(username);
			req.setAttribute("name", name);
			req.setAttribute("price", price);
			
			RequestDispatcher rd=req.getRequestDispatcher("order.jsp");
			rd.forward(req, resp);
			
		}
		else {
			req.setAttribute("loginmsg", "To place order Login first");
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
		}
		
	}

}
