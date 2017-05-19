package state;

public class VentaAgotada implements State {

	public String doAction() {
		System.out.println("Mercancia no disponible para venta");
		return "Mercancia no disponible para venta";
	}

}