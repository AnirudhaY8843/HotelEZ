package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.cj.protocol.Resultset;

public class UserDAO {
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
	
	
//	login validation method
	public ArrayList<UserDTO> logIn(UserDTO dto) {
			
			PreparedStatement pstmt;
			ResultSet rs;
			
			boolean login=false;
			ArrayList<UserDTO> user=new ArrayList<UserDTO>();
			String username=dto.getUserName();
			String password=dto.getPassword();
			String query="SELECT username,password FROM user";
			String query2="SELECT fullname,username,contact,email from user WHERE username=?";
			
			try {
				pstmt=con.prepareStatement(query);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					String dbUser=rs.getString(1);
					String dbPassword=rs.getString(2);
					if(username.equals(dbUser)&&password.equals(dbPassword)) {
						login=true;
						pstmt=con.prepareStatement(query2);
						pstmt.setString(1, dto.getUserName());
						rs=pstmt.executeQuery();
						while(rs.next()) {
							String fullName=rs.getString(1);
							String userName=rs.getString(2);
							long contact=rs.getLong(3);
							String email=rs.getString(4);
							UserDTO obj= new UserDTO();
							obj.setFullName(fullName);
							obj.setUserName(userName);
							obj.setContact(contact);
							obj.setEmail(email);
							user.add(obj);
						}
					}
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return user;
		}
	
	
	//signup method
	public ArrayList<UserDTO> signUp(UserDTO dto) {
		PreparedStatement pstmt;
		
		ResultSet rs;
		
		ArrayList<UserDTO> user=new ArrayList<UserDTO>();
		boolean signup=false;
		
		String query="INSERT INTO user (fullname,username,contact,email,password) values(?,?,?,?,?)";
		
		String query2="SELECT fullname,username,contact,email from user WHERE username=?";
		
		
		try {
			pstmt=con.prepareStatement(query);
			
			pstmt.setString(1, dto.getFullName());
			pstmt.setString(2, dto.getUserName());
			pstmt.setLong(3, dto.getContact());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getPassword());
			pstmt.executeUpdate();
			signup=true;
			if(signup) {
				pstmt=con.prepareStatement(query2);
				pstmt.setString(1, dto.getUserName());
				rs=pstmt.executeQuery();
				while(rs.next()) {
					String fullName=rs.getString(1);
					String userName=rs.getString(2);
					long contact=rs.getLong(3);
					String email=rs.getString(4);
					UserDTO obj= new UserDTO();
					obj.setFullName(fullName);
					obj.setUserName(userName);
					obj.setContact(contact);
					obj.setEmail(email);
					user.add(obj);
				}
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
		
	}
	
	
	//profile method
	public void fetchProfile() {
		
	}


	public static int insertImage(String userName, byte[] imageData) {
		// TODO Auto-generated method stub
		
		PreparedStatement pstmt;
		String query = "INSERT INTO user_images (username, image) VALUES (?, ?)";
        int result = 0;

        try {

             
        	pstmt = con.prepareStatement(query);

            pstmt.setString(1, userName);
            pstmt.setBytes(2, imageData);

            result = pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
	}


	public ArrayList<UserDTO> getprofile(UserDTO dto) {
		// TODO Auto-generated method stub
		
		ArrayList<UserDTO> user=new ArrayList<UserDTO>();
		
		PreparedStatement pstmt;
		ResultSet rs;
		String query="SELECT fullname,username,contact,email from user WHERE username=?";
		String username=dto.getUserName();
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, username);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				String fullName=rs.getString(1);
				String userName=rs.getString(2);
				long contact=rs.getLong(3);
				String email=rs.getString(4);
				UserDTO obj= new UserDTO();
				obj.setFullName(fullName);
				obj.setUserName(userName);
				obj.setContact(contact);
				obj.setEmail(email);
				user.add(obj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
		
	}
}
