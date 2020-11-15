import java.util.*;
import Java3.*;  

/*
  Authors: Nathan Markle and Kyle Hoffpauir
  Date: 11/10/2020
  Class: CSC-4510
  Description: A class to create a list of custom java objects and sort them using the Collection's default
               sort function which uses the Comparable extension's compareTo method. by overriding compareTo
               method we can use < > =.
*/

public class JavaSort {
    public static void main(String[] args) {
      ArrayList<Fruit> fruitList = makeFruitList();
      System.out.print("Before sorting:\t");
      System.out.println(fruitList);
      Sort<Fruit> sortObj = new Sort<Fruit>();
      sortObj.sortList(fruitList);
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
}

//simple fruit class
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

//simple fruit class
public class Sort<T> {
    void sortList(ArrayList<T> list) {
    //use a sort method that already exists. 
    //dont reinvent the wheel.
    Collections.sort(list);
  }
}