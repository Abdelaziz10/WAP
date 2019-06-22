package com.example.dao;
import com.example.model.Product;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class OrderDB {
    static List<Product> items = new ArrayList<>();

    public static void addItem(Product item){
        items.add(item);
    }

    public static List<Product> getAllItems(){
        return items;
    }
  public static int getSize(){
        return items.size();
  }
    public static void cleanItems(){
        items.clear();
    }
    public static double totalPrice(){
        double x = 0;
        for(Product p : items){
            x += p.getUnitPrice();
        }
        return x;

    }
}
