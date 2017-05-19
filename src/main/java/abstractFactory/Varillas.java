package abstractFactory;
import java.util.ArrayList;

public abstract class Varillas {
    private ArrayList<String> elementos = new ArrayList<String>();
    // -------------------------------
    public String getElemento( int posicion ) {
        return this.elementos.get( posicion );
    }
    // -------------------------------
    public void insertarElemento( String texto ) {
        this.elementos.add( texto );
    }

    public String crear()
    {
        System.out.println("Creando varilla...");
        return "Creando varilla...";
    }

    // Método a implementar por las clases que hereden
     public abstract String configurar();
}
