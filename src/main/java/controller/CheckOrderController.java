package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.OrderDAO;
import model.OrderDTO;

@WebServlet("/checkorder")
public class CheckOrderController extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		HttpSession session=req.getSession(false);
		
		String username=(String)session.getAttribute("username");
		
		String name=req.getParameter("name");
		double price=Double.parseDouble(req.getParameter("price"));
		int noOfDish=Integer.parseInt(req.getParameter("noofdish"));
		String adress=req.getParameter("adress");
		
		OrderDTO dto=new OrderDTO();
		dto.setFoodName(name);
		dto.setPrice(price);
		dto.setNoOfDish(noOfDish);
		dto.setAdress(adress);
		
		OrderDAO dao=new OrderDAO();
		boolean order=dao.addOrder(dto,username);
			
		if(order) {
			RequestDispatcher rd=req.getRequestDispatcher("profile");
			rd.forward(req, resp);
		}
		else {
			RequestDispatcher rd=req.getRequestDispatcher("menu.jsp");
			rd.forward(req, resp);
			
		}
		
	}
}
