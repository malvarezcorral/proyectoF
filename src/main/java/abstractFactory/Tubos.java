package abstractFactory;

public abstract class Tubos {
    private String texto;

    public String getTexto() {
        return this.texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public String crear()
    {
        System.out.println("Creando tubo...");
        return "Creando tubo...";
    }

    // Método a implementar por las clases que hereden
     public abstract String configurar();
}