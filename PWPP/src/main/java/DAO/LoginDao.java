package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Database.DBConnection;

public class LoginDao {
    // Method to validate user credentials
    public static boolean validate(String username, String password) {
        boolean status = false;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Get a connection instance from DBConnection
            connection = DBConnection.getInstance().getConnection();

            // Prepare SQL query to check user credentials
            preparedStatement = connection.prepareStatement("SELECT * FROM UserLogin WHERE UserName = ? AND Password = ?");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            // Execute the query
            resultSet = preparedStatement.executeQuery();

            // If a row is returned, credentials are valid
            status = resultSet.next();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close the result set, statement, and connection
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return status;
    }
}
