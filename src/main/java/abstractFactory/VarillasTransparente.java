package abstractFactory;

public class VarillasTransparente extends Varillas
{
    public VarillasTransparente()
    {
        this.configurar();
    }

     public String configurar()
    {
        System.out.println("Dejando varilla sin color...");
        return "Dejando varilla sin color...";
    }
}
