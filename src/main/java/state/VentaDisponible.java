package state;

public class VentaDisponible implements State {

	public String doAction() {
		System.out.println("Mercancia disponible en venta");
		return "Mercancia disponible en venta";
	}

}