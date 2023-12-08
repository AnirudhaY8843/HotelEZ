package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MenuDAO {
	
	static Connection con;
	static{
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
	
	
	public ArrayList<MenuDTO> getMenu() {
		
		Statement stmt;
		ResultSet rs;
		
		ArrayList<MenuDTO> menu=new ArrayList<MenuDTO>();
		
		String query="SELECT * FROM veg_menu";
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			while(rs.next()) {
				String foodName=rs.getString(2);
				String desccription=rs.getString(3);
				double price = rs.getDouble(4);
				MenuDTO dto=new MenuDTO();
				dto.setFoodName(foodName);
				dto.setDescription(desccription);
				dto.setPrice(price);
				menu.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return menu;
		
	}


	public ArrayList<MenuDTO> getNonvegMenu() {
		// TODO Auto-generated method stub
		

		Statement stmt;
		ResultSet rs;
		
		ArrayList<MenuDTO> menu=new ArrayList<MenuDTO>();
		
		String query="SELECT * FROM nonveg_menu";
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			while(rs.next()) {
				String foodName=rs.getString(2);
				String desccription=rs.getString(3);
				double price = rs.getDouble(4);
				MenuDTO dto=new MenuDTO();
				dto.setFoodName(foodName);
				dto.setDescription(desccription);
				dto.setPrice(price);
				menu.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return menu;
	}

}
