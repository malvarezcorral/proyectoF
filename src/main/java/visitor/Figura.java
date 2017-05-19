package visitor;

public class Figura implements ItemElement {
	private double price;
	private String codeNumber;
	 
	public Figura(double cost, String code){
		this.price = cost;
		this.codeNumber = code;
	}
	
	public double getPrice(){
		return price;
	}
	
	public String getCodeNumber(){
		return codeNumber;
	}
	
	public double accept(ShoppingCartVisitor visitor){
		return visitor.visit(this);
	}

}
