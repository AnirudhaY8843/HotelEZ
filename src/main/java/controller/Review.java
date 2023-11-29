package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ReviewDAO;
import model.ReviewDTO;

@WebServlet("/review")
public class Review extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ArrayList<ReviewDTO> review =new ArrayList<ReviewDTO>();
		ReviewDAO dao= new ReviewDAO();
		
		review=dao.getReview();
		if(review!=null || !review.isEmpty()) {
		req.setAttribute("review", review);
		RequestDispatcher rd=req.getRequestDispatcher("review.jsp");
		rd.forward(req, resp);
		}else {
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		}
		
	}
}
