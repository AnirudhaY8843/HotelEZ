package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MenuDAO;
import model.MenuDTO;


@WebServlet("/menu")
public class MenuController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ArrayList<MenuDTO> menu=new ArrayList<MenuDTO>();
		
		MenuDAO dao=new MenuDAO();
		menu= dao.getMenu();
		
		ArrayList<MenuDTO> nonveg=new ArrayList<MenuDTO>();
		nonveg=dao.getNonvegMenu();
		
		req.setAttribute("menu", menu);
		req.setAttribute("nonveg", nonveg);
		RequestDispatcher rd=req.getRequestDispatcher("menu.jsp");
		rd.forward(req, resp);
		
		
	}

}
