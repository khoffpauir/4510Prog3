package Java3;
public class Fruit implements Comparable<Fruit> {
    public final String name;
    public final int id;

    public Fruit(String name, int id) {
        this.name = name;
        this.id = id;
    }

    @Override
    public String toString() {
        return name + ":" + id;
    }

    @Override
    /** 
     *   The natural ordering for 'Fruit' objects is by the 'name' field. 
     *   Override the compareTo function in order to have < > = overriden
     **/
    public int compareTo(Fruit o) {
        return name.compareTo(o.name);
    }
}