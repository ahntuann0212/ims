package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {

    private static final String DB_URL = "jdbc:sqlserver://localhost:1433;databaseName=IMS;trustServerCertificate=true;";
    private static final String USER = "sa";
    private static final String PASS = "123456";

    public DBContext() throws ClassNotFoundException {
    }

    public static Connection getConnection() throws ClassNotFoundException {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }


    public static void closeConnection(Connection conn) {

        if (conn != null) {

            try {

                conn.close();

            } catch (SQLException e) {

                System.err.println("Error closing connection: " + e.getMessage());

            }

        }

    }
	public static void main(String[] args) {

		try (Connection conn = getConnection()) {

			if (conn != null) {

				System.out.println("Connected to the database!");

				// Perform database operations here

			} else {

				System.out.println("Failed to make connection!");

			}

		} catch (SQLException | ClassNotFoundException e) {

			System.err.println("SQL Exception: " + e.getMessage());
		}

	}
}
