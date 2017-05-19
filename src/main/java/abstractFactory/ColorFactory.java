package abstractFactory;

public class ColorFactory implements Tipos {
    public ColorFactory() {
    }

     public Tubos getTubos() {
        return new TubosColor();
    }

     public Varillas getVarillas() {
        return new VarillasColor();
    }
}
