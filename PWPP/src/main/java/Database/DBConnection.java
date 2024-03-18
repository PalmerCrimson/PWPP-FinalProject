package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DBConnection {
	private static DBConnection instance;
	private static Connection connection ;
	
	private String serverUrl = "jdbc:mysql://localhost:3306/FoodWasteProductionPlatform";
	private String userString = "root";
	private String passwordString = "13072004";
	private String driverString = "com.mysql.cj.jdbc.Driver";
        
     
	
	// Private constructor to prevent instantiation from outside the class
    private DBConnection() {
        try {
            
            // Load the JDBC driver
            Class.forName(driverString);
            // Create the database connection
            connection = DriverManager.getConnection(serverUrl, userString, passwordString);
            
             
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle the exception accordingly (logging, throwing a custom exception, etc.)
         
        }
    }

    // Method to provide a single instance of DBConnection (Singleton pattern)
    public static synchronized DBConnection getInstance() {
        if (instance == null) {
            instance = new DBConnection();
        }
        return instance;
    }

    // Method to get the database connection
    public Connection getConnection() {
        return connection;
    }
	
}

