package builder;

public abstract class Producto1 implements Item {

	   public Longitud longitud() {
	      return new Gde();
	   }
           
           public Diametro diametro(){
               return new diamgde();
           }


	   public abstract float price();
}

