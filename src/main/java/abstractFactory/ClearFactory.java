package abstractFactory;

public class ClearFactory implements Tipos
{
    public ClearFactory() {
    }

     public Tubos getTubos() {
        return new TubosTransparente();
    }

     public Varillas getVarillas() {
        return new VarillasTransparente();
    }
}