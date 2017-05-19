package jvham.visitor;

public class Fruit implements ItemElement {
	private double pricePerKg;
	private double weight;
	private String name;
	
	public Fruit(double pricePerKg, double weight, String name) {
		this.pricePerKg = pricePerKg;
		this.weight = weight;
		this.name = name;
	}
	
	public double getPricePerKg(){
		return pricePerKg;
	}
	
	public double getWeight(){
		return weight;
	}
	
	public String getName(){
		return this.name;
	}
	
	public double accept(ShoppingCartVisitor visitor){
		return visitor.visit(this);
	}
	
}