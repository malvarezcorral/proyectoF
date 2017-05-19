package visitor;

public class ShoppingCartVisitorImpl implements ShoppingCartVisitor {
	public double visit(Figura figura){
		double cost = 0;
		
		if(figura.getPrice() > 50){
			cost = figura.getPrice() - 5;
		} else cost = figura.getPrice();
		System.out.println("Codigo de la figura: " + figura.getCodeNumber() + "   Precio : " + cost);
		Consola.texto += "<p>Codigo del figura: " + figura.getCodeNumber() + "   Precio : " + cost+"</p>";
		return cost;
	}
	
	public double visit(Producto producto){
		double cost = producto.getPricePerKg() * producto.getWeight();
		System.out.println("producto: " + producto.getName() + "   Precio : "+ cost);
		Consola.texto += "<p>producto: " + producto.getName() + "   Precio : "+ cost+"</p>";
		return cost;
	}
	

}
