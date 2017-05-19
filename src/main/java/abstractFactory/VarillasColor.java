package abstractFactory;

public class VarillasColor extends Varillas
{
    public VarillasColor()
    {
        this.configurar();
    }

     public String configurar()
    {
        System.out.println("Agregando color a varilla...");
        return "Agregando color a varilla...";
    }
}