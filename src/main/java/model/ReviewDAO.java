package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ReviewDAO {
	
	static Connection con;
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelez","root","128843");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<ReviewDTO> getReview() {
		
		Statement stmt=null;
		ResultSet rs;
		
		ArrayList<ReviewDTO> reveiw =new ArrayList<ReviewDTO>();
		
		String query="SELECT * FROM review";
		try {
			stmt=con.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				ReviewDTO data =new ReviewDTO();
				data.setUsername(rs.getString(2));
				data.setStars(rs.getInt(3));
				data.setReview(rs.getString(4));
				reveiw.add(data);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return reveiw;
	}

	public boolean insertReview(ReviewDTO dto) {
		
		
		boolean flag=false;
		PreparedStatement pstmt;
		
		String query="INSERT INTO review (username,stars,review) VALUES (?,?,?)";
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, dto.getUsername());
			pstmt.setInt(2, dto.getStars());
			pstmt.setString(3, dto.getReview());
			pstmt.executeUpdate();
			flag=true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
		
	}
}
