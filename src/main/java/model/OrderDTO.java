package model;

public class OrderDTO {

	private int orderId;
	private String foodName;
	private double price;
	private String adress;
	private int noOfDish;
	private byte[] image;
	
	
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public int getNoOfDish() {
		return noOfDish;
	}
	public void setNoOfDish(int noOfDish) {
		this.noOfDish = noOfDish;
	}
	
	
	
}
