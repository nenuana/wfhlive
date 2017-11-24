
package Calendar;

import java.sql.Connection;
import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyUtils {
    public static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";
    private static final String ATT_NAME_USER_NAME = "ATTRIBUTE_FOR_STORE_USER_NAME_IN_COOKIE";
    private static final String ATT_NAME_ADMIN_NAME = "ATTRIBUTE_FOR_STORE_ADMIN_NAME_IN_COOKIE";

    public MyUtils() {
    }

    public static void storeConnection(ServletRequest request, Connection conn) {
        request.setAttribute("ATTRIBUTE_FOR_CONNECTION", conn);
    }

    public static Connection getStoredConnection(ServletRequest request) {
        Connection conn = (Connection)request.getAttribute("ATTRIBUTE_FOR_CONNECTION");
        return conn;
    }

    public static String getUserCookieAdministrator(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            Cookie[] var2 = cookies;
            int var3 = cookies.length;

            for(int var4 = 0; var4 < var3; ++var4) {
                Cookie cookie = var2[var4];
                if ("ATTRIBUTE_FOR_STORE_ADMIN_NAME_IN_COOKIE".equals(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }

        return null;
    }

    public static String getUserNameInCookie(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            Cookie[] var2 = cookies;
            int var3 = cookies.length;

            for(int var4 = 0; var4 < var3; ++var4) {
                Cookie cookie = var2[var4];
                if ("ATTRIBUTE_FOR_STORE_USER_NAME_IN_COOKIE".equals(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }

        return null;
    }

    public static void deleteUserCookie(HttpServletResponse response) {
        Cookie cookieUserName = new Cookie("ATTRIBUTE_FOR_STORE_USER_NAME_IN_COOKIE", (String)null);
        cookieUserName.setMaxAge(0);
        response.addCookie(cookieUserName);
    }
}

