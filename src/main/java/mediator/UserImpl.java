package jvham.mediator;

public class UserImpl extends User {

	public UserImpl(ChatMediator med, String name) {
		super(med, name);
	}
	
	@Override
	public void receive(String msg) {
		System.out.println(this.name+": recibiendo mensaje..:"+msg);
		Chat.textoChat += this.name+": recibiendo mensaje..:"+msg+"</p><p>";
	}
	
	@Override
	public void send(String msg){
		System.out.println(this.name+": enviando mensaje..:"+msg);
		Chat.textoChat += this.name+": enviando mensaje..:"+msg+"</p><p>";
		mediator.sendMessage(msg, this);
	}
	

}