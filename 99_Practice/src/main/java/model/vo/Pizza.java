package model.vo;

public class Pizza {

	private String pizza;
	private String toping;
	private String side;
	private int price;

	
	// 생성자
	public Pizza() {
		super();
	}
	public Pizza(String pizza, String toping, String side, int price) {
		super();
		this.pizza = pizza;
		this.toping = toping;
		this.side = side;
		this.price = price;
	}
	
	
	// getter() / setter()
	public String getPizza() {
		return pizza;
	}
	public String getToping() {
		return toping;
	}
	public String getSide() {
		return side;
	}
	public int getPrice() {
		return price;
	}
	
	// toString()
	@Override
	public String toString() {
		return "Pizza [pizza=" + pizza + ", toping=" + toping + ", side=" + side + ", price=" + price + "]";
	}
	
	
	
	
}
