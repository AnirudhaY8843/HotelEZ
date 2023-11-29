package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserDAO;
import model.UserDTO;


@WebServlet("/login")
public class LoginController extends HttpServlet{
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		
		UserDTO dto=new UserDTO();
		dto.setUserName(username);
		dto.setPassword(password);
		
		UserDAO dao=new UserDAO();
		ArrayList<UserDTO> user= new ArrayList<UserDTO>();
		user=dao.logIn(dto);
		
		if(user!=null && !user.isEmpty()) {
			req.setAttribute("user", user);
			HttpSession session=req.getSession(true);
			session.setAttribute("username", username);
			RequestDispatcher rd=req.getRequestDispatcher("profile.jsp");
			rd.forward(req, resp);
		}
		else {
			req.setAttribute("errorMsg", "Invalid Username or Password");
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			System.out.println("I am running check somthing...");
			rd.forward(req, resp);
		}
		
	}
		
	
}

