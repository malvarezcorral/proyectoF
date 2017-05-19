package abstractFactory;

public class TubosColor extends Tubos {
    public TubosColor()
    {
        this.configurar();
    }

     public String configurar()
    {
        System.out.println("Agregando color al tubo...");
        return "Agregando color al tubo...";
    }
}
