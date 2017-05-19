package state;

public class EstadoVenta implements State {

	private State ventaState;

	public void setState(State state) {
		this.ventaState=state;
	}

	public State getState() {
		return this.ventaState;
	}

	
	public String doAction() {
		return this.ventaState.doAction();
		
	}

}