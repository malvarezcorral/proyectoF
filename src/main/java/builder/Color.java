/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package builder;

/**
 *
 * @author miguel
 */
public class Color extends Producto1 {
    
    @Override
	   public float price() {
	      return 50.0f;
	   }


	   public String name() {
	      return "Color";
	   }
    
}
