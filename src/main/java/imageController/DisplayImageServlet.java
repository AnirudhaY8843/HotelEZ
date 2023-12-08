package imageController;

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

import model.UserDAO;
import model.UserDTO;

@WebServlet("/DisplayImageServlet")
public class DisplayImageServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/hotelez";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "128843";
    
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	ArrayList<UserDTO> user=new ArrayList<UserDTO>();
		HttpSession session=request.getSession(false);
		
		if(session!=null) {
			//need to cast in String
			String username=(String) session.getAttribute("username");
			
			UserDTO dto=new UserDTO();
			dto.setUserName(username);
			
			UserDAO dao =new UserDAO();
			user=dao.getprofile(dto);
			
			
		     if(user!=null && !user.isEmpty()) {
		    	 request.setAttribute("user", user);
		    	 RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
		    	 rd.forward(request, response);
		     
    	
    	
    	
    	
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        InputStream inputStream = null;
         
        System.out.println("Hello i am working brother");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            String sql = "SELECT image FROM user WHERE username= ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username); // Assuming user_id is 1 (replace with your user identification logic)

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                inputStream = resultSet.getBinaryStream("image");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        response.setContentType("image/jpeg"); // Adjust content type based on your image format

        int bufferSize = 1024;
        byte[] buffer = new byte[bufferSize];

        try {
            while (inputStream.read(buffer) != -1) {
                response.getOutputStream().write(buffer);
            }
            inputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
		     }
		     else {
		    	 response.sendRedirect("login.jsp");
		     }
    	
		}
		}
}