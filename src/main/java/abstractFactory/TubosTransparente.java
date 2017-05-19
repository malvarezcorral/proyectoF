package abstractFactory;

public class TubosTransparente extends Tubos {
    public TubosTransparente()
    {
        this.configurar();
    }

     public String configurar()
    {
        System.out.println("Dejando tubo sin color...");
        return "Dejando tubo sin color...";
    }
}