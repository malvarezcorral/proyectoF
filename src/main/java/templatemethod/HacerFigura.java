package templatemethod;

public abstract class HacerFigura {
	
	public final String[] prepararMateriales() {
		String[] mensajes={
		PrepararMateriales(),
		ArmarFigura()};
		return mensajes;

	}

	//Template methods

	protected abstract String PrepararMateriales();

	protected String ArmarFigura(){
		return "Creando Figura";
		
	}
}
