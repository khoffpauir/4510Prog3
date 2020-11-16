import java.util.ArrayList;

public class Main {
  public static void main(String[] args) {
    ArrayList<Fruit> fruitList = makeFruitList();
    System.out.print("Before sorting:\t");
    System.out.println(fruitList);
    selectionSort(fruitList);
    System.out.print("After sorting:\t");
    System.out.println(fruitList);
}

//make a list of objects to sort through
static ArrayList<Fruit> makeFruitList() {
    ArrayList<Fruit> list = new ArrayList<Fruit>();
    Fruit orange = new Fruit("orange", 1);
    Fruit banana = new Fruit("banana", 2);
    Fruit kiwi = new Fruit("kiwi", 3);
    Fruit strawberry = new Fruit("strawberry", 4);
    Fruit carrot = new Fruit("carrot", 5);
    Fruit apple = new Fruit("apple", 6);
    Fruit grape = new Fruit("grape", 7);
    Fruit pineapple = new Fruit("pineapple", 8);
    Fruit mango = new Fruit("mango", 9);
    Fruit lemon = new Fruit("lemon", 10);
    list.add(orange);
    list.add(banana);
    list.add(kiwi);
    list.add(strawberry);
    list.add(carrot);
    list.add(apple);
    list.add(grape);
    list.add(pineapple);
    list.add(mango);
    list.add(lemon);
    return list;
}

public static <T extends Comparable<T>> ArrayList<T> selectionSort(ArrayList<T> list) {
    for (int i = 0; i < list.size(); i++) {
        T min = list.get(i);
        int minId = i;
        for (int j = i+1; j < list.size(); j++) {
            if (list.get(j).compareTo(min) < 0) {
                min = list.get(j);
                minId = j;
            }
        }
        // swapping
        T temp = list.get(i);
        list.set(i, min);
        list.set(minId, temp);
    }
    return list;
} 
}
