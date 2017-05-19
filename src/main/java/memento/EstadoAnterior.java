package memento;
import java.util.ArrayList;
import java.util.List;

public class EstadoAnterior {
	private List<Memento> mementoList = new ArrayList<Memento>();

    public void add(Memento m) {
    	mementoList.add(m);
    }

    public Memento get(int index) {
        return mementoList.get(index);
    }

}
