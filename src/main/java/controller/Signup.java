package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserDAO;
import model.UserDTO;

@WebServlet("/signup")
public class Signup extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String fullname=req.getParameter("fullname");
		String username=req.getParameter("username");
		long cno=Long.parseLong(req.getParameter("contact"));
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String cpassword=req.getParameter("cpassword");
		
		UserDTO dto=new UserDTO();
		
		ArrayList<UserDTO> user=new ArrayList<UserDTO>();
		
		if(password.equals(cpassword)) {
			dto.setFullName(fullname);
			dto.setUserName(username);
			dto.setContact(cno);
			dto.setEmail(email);
			dto.setPassword(cpassword);
		}
		
		UserDAO dao=new UserDAO();
		user=dao.signUp(dto);
		
			req.setAttribute("user", user);
			RequestDispatcher rd=req.getRequestDispatcher("profile.jsp");
			rd.forward(req, resp);
		
	}
}
