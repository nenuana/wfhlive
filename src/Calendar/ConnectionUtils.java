package Calendar;

import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionUtils {
    public ConnectionUtils() {
    }

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        return MySQLConnUtils.getMySQLConnection();
    }

    public static void closeQuietly(Connection conn) {
        try {
            conn.close();
        } catch (Exception var2) {
            ;
        }

    }

    public static void rollbackQuietly(Connection conn) {
        try {
            conn.rollback();
        } catch (Exception var2) {
            ;
        }

    }
}
