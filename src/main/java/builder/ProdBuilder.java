package builder;

public class ProdBuilder {

	   public Prod prodLum (){
	      Prod p = new Prod();
	      p.addItem(new Luminati());
	      return p;
	   }   

	   public Prod prodNorm (){
	      Prod p = new Prod();
	      p.addItem(new Normal());
	      return p;
	   }
           
           public Prod prodCol (){
	      Prod p = new Prod();
	      p.addItem(new Color());
	      return p;
	   }
	}