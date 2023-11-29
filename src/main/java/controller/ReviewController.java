package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ReviewDAO;
import model.ReviewDTO;


@WebServlet("/setreview")
public class ReviewController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		String name=req.getParameter("name");
		int stars=Integer.parseInt(req.getParameter("stars"));
		String review=req.getParameter("review");
		
		ReviewDTO dto = new ReviewDTO();
		
		dto.setUsername(name);
		dto.setStars(stars);
		dto.setReview(review);
		
		ReviewDAO dao=new ReviewDAO();
		boolean flag=dao.insertReview(dto);
		
		if(flag) {
			RequestDispatcher rd=req.getRequestDispatcher("review");
			rd.forward(req, resp);
		}
		else {
			resp.sendRedirect("/review.jsp");
			
		}
	}
}
