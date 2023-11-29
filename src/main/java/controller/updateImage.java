package controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.UserDAO;

@WebServlet("/updatimage")

public class updateImage extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		String path =req.getRealPath("/")+"images"+File.separator+user.getProfile;
		 
		 String userName = req.getParameter("username");
			Part filePart = req.getPart("file");
	        InputStream fileContent = filePart.getInputStream();
	        byte[] imageData = fileContent.readAllBytes();

	        // Update the image in the database
	        int result = UserDAO.insertImage(userName, imageData);
	        if (result > 0) {
	            resp.sendRedirect("profile.jsp?success=true");
	        } else {
	            resp.sendRedirect("profile.jsp?success=false");
	        }
	}
}
