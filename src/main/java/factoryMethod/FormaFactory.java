package factoryMethod;

public class FormaFactory {
	//use getShape method to get object of type shape 
	   public Forma getShape(String shapeType) {
	      if(shapeType == null){
	         return null;
	      }		
	      if(shapeType.equalsIgnoreCase("PAQUETE NORMAL")){
	         return new Normal();
	         
	      } else if(shapeType.equalsIgnoreCase("PAQUETE COLOR")){
	         return new Color();
	         
	      } else if(shapeType.equalsIgnoreCase("PAQUETE LUMINATI")){
	         return new Luminati();
	      }
	      
	      return null;
	   }

}
