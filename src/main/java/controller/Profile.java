package controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.OrderDAO;
import model.OrderDTO;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/profile")
public class Profile extends HttpServlet{

	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ArrayList<UserDTO> user=new ArrayList<UserDTO>();
		ArrayList<OrderDTO> orders=new ArrayList<OrderDTO>();
		HttpSession session=req.getSession(false);
		String username=null;
		if(session!=null) {
			//need to cast in String
			username=(String) session.getAttribute("username");
			
			UserDTO dto=new UserDTO();
			dto.setUserName(username);
			
			UserDAO dao =new UserDAO();
			user=dao.getprofile(dto);
			
			OrderDAO order=new OrderDAO();
			orders=order.getOrderDetails(username);
			
			
			for(OrderDTO data:orders) {
				System.out.println(data.getFoodName());
			}
			
    		for(UserDTO data:user){
    			System.out.println(data.getImage());
    		}
			
			System.out.println();
		     if(user!=null && !user.isEmpty()) {
		         req.setAttribute("user", user);
		         req.setAttribute("orders", orders);
		    	 RequestDispatcher rd=req.getRequestDispatcher("profile.jsp");
		    	 rd.forward(req, resp);
		    	 
		    	 
		    }
		     else {
		    	 resp.sendRedirect("login.jsp");
		     }
		          	
		}
	}

}
