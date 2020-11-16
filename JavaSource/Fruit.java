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

    /**
     *   The ordering for 'Fruit' objects is by the 'name' field.
     *   Override the compareTo function in order to have < > = overriden
     **/
    @Override
    public int compareTo(Fruit f) {
        return name.compareTo(f.name);
    }
}
