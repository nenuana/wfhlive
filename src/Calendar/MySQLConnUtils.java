package Calendar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnUtils {
    public MySQLConnUtils() {
    }

    public static Connection getMySQLConnection() throws ClassNotFoundException, SQLException {
        String instanceConnectionName = "project-management-reporting:rbro-cloudsql2";
        String databaseName = "wfh";
        String username = "wfh";
        String password = "uthaa1Oh";
        return getMySQLConnection(instanceConnectionName, databaseName, username, password);
    }

    public static Connection getMySQLConnection(String instanceConnectionName, String databaseName, String username, String password) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        String jdbcUrl = String.format("jdbc:mysql://google/%s?cloudSqlInstance=%s&socketFactory=com.google.cloud.sql.mysql.SocketFactory", databaseName, instanceConnectionName);
        Connection conn = DriverManager.getConnection(jdbcUrl, username, password);
        return conn;
    }
}
