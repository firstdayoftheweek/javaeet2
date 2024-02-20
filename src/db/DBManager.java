package db;

import module.Items;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DBManager {
    private static Connection connection;
    static {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/javaeedatabase", "postgres", "rootroot");
        } catch (Exception e) {
            System.out.println("Connection error");
            e.printStackTrace();
        }
    }

    public static List<Items> getAllItems(){
        List<Items> items = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM goods");
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()){
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                double price = resultSet.getDouble("price");
                items.add(new Items(id, name, description, price));
            }
            statement.close();
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return items;
    }

    public static void addItem(Items item){
        try {
            PreparedStatement statement = connection.prepareStatement(" " +
                    "INSERT INTO goods (name, description, price) " +
                    "VALUES (?,?,?)");
            statement.setString(1, item.getName());
            statement.setString(2, item.getDescription());
            statement.setDouble(3, item.getPrice());
            int rows = statement.executeUpdate();
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Items getItemById(Long id){
        Items item = null;
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM goods WHERE goods.id = ? ");
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()){
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                double price = resultSet.getDouble("price");
                item = new Items(id, name, description, price);
            }
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return item;
    }

    public static void updateItem(Items item) {
        try {
            PreparedStatement statement = connection.prepareStatement("UPDATE goods SET name=?, description=?, price=? WHERE id = ? ");
            statement.setString(1, item.getName());
            statement.setString(2, item.getDescription());
            statement.setDouble(3, item.getPrice());
            statement.setLong(4, item.getId());
            statement.executeUpdate();
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteItem(Long id){
        try {
            PreparedStatement statement = connection.prepareStatement("DELETE FROM goods WHERE id = ? ");
            statement.setLong(1, id);
            statement.executeUpdate();
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
