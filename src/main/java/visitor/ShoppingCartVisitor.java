package visitor;

public interface ShoppingCartVisitor {
	double visit(Figura figura);
	double visit(Producto producto);

}
