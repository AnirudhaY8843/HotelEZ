package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class OrderDAO {

	
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
	
	
	
	public boolean addOrder(OrderDTO dto, String username) {
		
		PreparedStatement pstmt;
		
		ResultSet rs;
		
		boolean order=false;
		
		String query="SELECT user_id from user WHERE username=? ";
		String query2="INSERT INTO orders (food_name,price,adresss,no_of_dish,user_id) VALUES (?,?,?,?,?)";
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, username);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				int userId=rs.getInt(1);
				
				pstmt=con.prepareStatement(query2);
				pstmt.setString(1, dto.getFoodName());
				pstmt.setDouble(2, dto.getPrice());
				pstmt.setString(3, dto.getAdress());
				pstmt.setInt(4,dto.getNoOfDish());
				pstmt.setInt(5, userId);
				pstmt.executeUpdate();
				order=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return order;
		
	}
	
	
	public ArrayList<OrderDTO> getOrderDetails(String username) {
		PreparedStatement pstmt;
		
		ResultSet rs;
		System.out.println("i am "+username);
		ArrayList<OrderDTO> order=new ArrayList<OrderDTO>();
		
		
		String query="SELECT user_id from user WHERE username=? ";
		String query2="SELECT * FROM orders where user_id=?";
		
		try {
			
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, username);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				int userId=rs.getInt(1);
				System.out.println("user id "+userId);
				pstmt=con.prepareStatement(query2);
				pstmt.setInt(1,userId);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					OrderDTO dto=new OrderDTO();
					dto.setOrderId(rs.getInt(1));
					dto.setFoodName(rs.getString(2));
					dto.setPrice(rs.getDouble(3));
					dto.setAdress(rs.getString(4));
					dto.setNoOfDish(rs.getInt(5));
					order.add(dto);
				}
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return order;
		
	}


	public boolean cancelOrder(int id) {
		
		boolean flag=false;
		
		PreparedStatement pstmt;
		
		String query="DELETE FROM orders WHERE order_id=?";
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, id);
			pstmt.execute();
			flag=true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return flag;
		
	}
}
