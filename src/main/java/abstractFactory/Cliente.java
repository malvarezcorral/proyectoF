package abstractFactory;

public class Cliente {
    public Cliente( Tipos style )
   {
       Tubos tubos = style.getTubos();
       tubos.crear();
       Varillas varillas = style.getVarillas();
       varillas.crear();
   }
}
  