package imageController;


import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/UploadImageServlet")
@MultipartConfig(maxFileSize = 16177215) // Max file size up to 16MB
public class UploadImageServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/hotelez";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "128843";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        InputStream inputStream = null;

        String username=null;
        //session attribute
        
        HttpSession session=request.getSession(false);
		if(session!=null) {
			//need to cast in String
			username=(String) session.getAttribute("username");
		}
		
		
        Part filePart = request.getPart("file");

        if (filePart != null) {
            inputStream = filePart.getInputStream();
        }

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            String sql = "UPDATE user SET image =? WHERE username=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);; // Assuming user_id is 1 (replace with your user identification logic)
            preparedStatement.setBlob(2, inputStream);

            preparedStatement.executeUpdate();
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

        response.sendRedirect("profile.jsp"); // Redirect back to the form after uploading
    }
}

