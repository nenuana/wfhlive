package Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(
        urlPatterns = {"/doDeleteInregistrari"}
)
public class doDeleteInregistrari extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public doDeleteInregistrari() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getRequestURI();
        if (!path.startsWith("/favicon.ico")) {
            String userIp = request.getRemoteAddr();
            InetAddress address = InetAddress.getByName(userIp);
            if (address instanceof Inet6Address) {
                userIp = userIp.substring(0, userIp.indexOf(":", userIp.indexOf(":") + 1)) + ":*:*:*:*:*:*";
            } else if (address instanceof Inet4Address) {
                userIp = userIp.substring(0, userIp.indexOf(".", userIp.indexOf(".") + 1)) + ".*.*";
            }

            response.setContentType("text/html");
            String url;
            if (System.getProperty("com.google.appengine.runtime.version").startsWith("Google App Engine/")) {
                url = System.getProperty("ae-cloudsql.cloudsql-database-url");

                try {
                    Class.forName("com.mysql.jdbc.GoogleDriver");
                } catch (ClassNotFoundException var79) {
                    throw new ServletException("Error loading Google JDBC Driver", var79);
                }
            } else {
                url = System.getProperty("ae-cloudsql.local-database-url");
            }

            this.log("connecting to: " + url);
            Connection conn = null;

            try {
                conn = DriverManager.getConnection(url);
            } catch (SQLException var78) {
                var78.printStackTrace();
                this.log("nu s-a conectat");
            }

            String email = request.getParameter("email");
            String it2pkstring = request.getParameter("id2pk_fk");
            int it2pk_fk = 0;

            try {
                it2pk_fk = Integer.parseInt(it2pkstring);
            } catch (Exception var77) {
                ;
            }

            String dateLuni = request.getParameter("Luni");
            Date Luni;
            java.sql.Date sqlLuni;
            String errorString;

            if (dateLuni != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Luni = null;

                try {
                    Luni = formatter.parse(dateLuni);
                } catch (ParseException var76) {
                    var76.printStackTrace();
                }

                sqlLuni = new java.sql.Date(Luni.getTime());
                inregistrari inregistrari = new inregistrari(sqlLuni, email, it2pk_fk);
                errorString = null;

                try {
                    DBUtilis.deleteInregistrare(conn, sqlLuni, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var75) {
                    var75.printStackTrace();
                    errorString = var75.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMarti = request.getParameter("Marti");

            if (dateMarti != null) {
                errorString = null;
                Date Marti = null;
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Marti = formatter.parse(dateMarti);
                } catch (ParseException var74) {
                    var74.printStackTrace();
                }

                java.sql.Date sqlMarti = new java.sql.Date(Marti.getTime());
                inregistrari inregistrari = new inregistrari(sqlMarti, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlMarti, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var73) {
                    var73.printStackTrace();
                    errorString = var73.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMiercuri = request.getParameter("Miercuri");

            if (dateMiercuri != null) {
                errorString = null;
                Date Miercuri = null;
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Miercuri = formatter.parse(dateMiercuri);
                } catch (ParseException var72) {
                    var72.printStackTrace();
                }

                java.sql.Date sqlMiercuri = new java.sql.Date(Miercuri.getTime());
                inregistrari inregistrari = new inregistrari(sqlMiercuri, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlMiercuri, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var71) {
                    var71.printStackTrace();
                    errorString = var71.getMessage();
                }

                request.setAttribute("inregistrari", errorString);
            }

            String dateJoi = request.getParameter("Joi");

            SimpleDateFormat formatter;
            if (dateJoi != null) {
                errorString = null;
                Date Joi = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Joi = formatter.parse(dateJoi);
                } catch (ParseException var70) {
                    var70.printStackTrace();
                }

                java.sql.Date sqlJoi = new java.sql.Date(Joi.getTime());
                inregistrari inregistrari = new inregistrari(sqlJoi, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlJoi, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var69) {
                    var69.printStackTrace();
                    errorString = var69.getMessage();
                }

                request.setAttribute("inregistrari", errorString);
            }

            String dateVineri = request.getParameter("Vineri");

            if (dateVineri != null) {

                Date Vineri = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Vineri = formatter.parse(dateVineri);
                } catch (ParseException var68) {
                    var68.printStackTrace();
                }

                java.sql.Date  sqlVineri = new java.sql.Date(Vineri.getTime());
                inregistrari inregistrari = new inregistrari(sqlVineri, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlVineri, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var67) {
                    var67.printStackTrace();
                    errorString = var67.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateLuni2 = request.getParameter("Luni2");

            if (dateLuni2 != null) {
                formatter = new SimpleDateFormat("yyyy-MM-dd");
                Date Luni2 = null;

                try {
                    Luni2 = formatter.parse(dateLuni2);
                } catch (ParseException var66) {
                    var66.printStackTrace();
                }

                java.sql.Date  sqlLuni2 = new java.sql.Date(Luni2.getTime());
                inregistrari inregistrari= new inregistrari(sqlLuni2, email, it2pk_fk);
                errorString = null;

                try {
                    DBUtilis.deleteInregistrare(conn, sqlLuni2, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var65) {
                    var65.printStackTrace();
                    errorString = var65.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMarti2 = request.getParameter("Marti2");

            if (dateMarti2 != null) {
                errorString = null;
                Date Marti2 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Marti2 = formatter.parse(dateMarti2);
                } catch (ParseException var64) {
                    var64.printStackTrace();
                }

                java.sql.Date sqlMarti2 = new java.sql.Date(Marti2.getTime());
                inregistrari inregistrari = new inregistrari(sqlMarti2, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlMarti2, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var63) {
                    var63.printStackTrace();
                    errorString = var63.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMiercuri2 = request.getParameter("Miercuri2");

            if (dateMiercuri2 != null) {
                errorString = null;
                Date Miercuri2 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Miercuri2 = formatter.parse(dateMiercuri2);
                } catch (ParseException var62) {
                    var62.printStackTrace();
                }

                java.sql.Date sqlMiercuri2 = new java.sql.Date(Miercuri2.getTime());
                inregistrari inregistrari= new inregistrari(sqlMiercuri2, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlMiercuri2, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var61) {
                    var61.printStackTrace();
                    errorString = var61.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }
//
            String dateJoi2 = request.getParameter("Joi2");

            if (dateJoi2 != null) {
                errorString = null;
                Date Joi2 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Joi2 = formatter.parse(dateJoi2);
                } catch (ParseException var60) {
                    var60.printStackTrace();
                }

                java.sql.Date sqlJoi2 = new java.sql.Date(Joi2.getTime());
                inregistrari inregistrari = new inregistrari(sqlJoi2, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlJoi2, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var59) {
                    var59.printStackTrace();
                    errorString = var59.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateVineri2 = request.getParameter("Vineri2");

            if (dateVineri2 != null) {
                errorString = null;
                Date Vineri2 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Vineri2 = formatter.parse(dateVineri2);
                } catch (ParseException var58) {
                    var58.printStackTrace();
                }

                java.sql.Date sqlVineri2 = new java.sql.Date(Vineri2.getTime());
                inregistrari inregistrari= new inregistrari(sqlVineri2, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlVineri2, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var57) {
                    var57.printStackTrace();
                    errorString = var57.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateLuni3 = request.getParameter("Luni3");

            if (dateLuni3 != null) {
                formatter = new SimpleDateFormat("yyyy-MM-dd");
                Date Luni3 = null;

                try {
                    Luni3 = formatter.parse(dateLuni3);
                } catch (ParseException var56) {
                    var56.printStackTrace();
                }

                java.sql.Date sqlLuni3 = new java.sql.Date(Luni3.getTime());
                inregistrari inregistrari = new inregistrari(sqlLuni3, email, it2pk_fk);


                try {
                    DBUtilis.deleteInregistrare(conn, sqlLuni3, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var55) {
                    var55.printStackTrace();
                    errorString = var55.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }
//pare bun
            String dateMarti3 = request.getParameter("Marti3");

            if (dateMarti3 != null) {
                errorString = null;
                Date Marti3 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Marti3 = formatter.parse(dateMarti3);
                } catch (ParseException var54) {
                    var54.printStackTrace();
                }

                java.sql.Date sqlMarti3 = new java.sql.Date(Marti3.getTime());
                inregistrari inregistrari = new inregistrari(sqlMarti3, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlMarti3, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var53) {
                    var53.printStackTrace();
                    errorString = var53.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String  dateMiercuri3 = request.getParameter("Miercuri3");

            if (dateMiercuri3 != null) {
                errorString = null;
                Date Miercuri3 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Miercuri3 = formatter.parse(dateMiercuri3);
                } catch (ParseException var52) {
                    var52.printStackTrace();
                }

                java.sql.Date sqlMiercuri3 = new java.sql.Date(Miercuri3.getTime());
                inregistrari inregistrari= new inregistrari(sqlMiercuri3, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlMiercuri3, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var51) {
                    var51.printStackTrace();
                    errorString= var51.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateJoi3 = request.getParameter("Joi3");

            if (dateJoi3 != null) {
                errorString = null;
                Date Joi3 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Joi3 = formatter.parse(dateJoi3);
                } catch (ParseException var50) {
                    var50.printStackTrace();
                }

                java.sql.Date sqlJoi3 = new java.sql.Date(Joi3.getTime());
                inregistrari inregistrari = new inregistrari(sqlJoi3, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlJoi3, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var49) {
                    var49.printStackTrace();
                    errorString = var49.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateVineri3 = request.getParameter("Vineri3");

            if (dateVineri3 != null) {
                errorString= null;
                Date Vineri3 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Vineri3 = formatter.parse(dateVineri3);
                } catch (ParseException var48) {
                    var48.printStackTrace();
                }

                java.sql.Date  sqlLuni4 = new java.sql.Date(Vineri3.getTime());
                inregistrari inregistrari = new inregistrari(sqlLuni4, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlLuni4, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var47) {
                    var47.printStackTrace();
                    errorString = var47.getMessage();
                }

                request.setAttribute("inregistrari", errorString);
            }

            String dateLuni4 = request.getParameter("Luni4");

            if (dateLuni4 != null) {
                formatter = new SimpleDateFormat("yyyy-MM-dd");
                Date Luni4 = null;

                try {
                    Luni4 = formatter.parse(dateLuni4);
                } catch (ParseException var46) {
                    var46.printStackTrace();
                }

                java.sql.Date sqlLuni4 = new java.sql.Date(Luni4.getTime());
                inregistrari inregistrari = new inregistrari(sqlLuni4, email, it2pk_fk);
                errorString = null;

                try {
                    DBUtilis.deleteInregistrare(conn, sqlLuni4, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var45) {
                    var45.printStackTrace();
                    errorString = var45.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMarti4 = request.getParameter("Marti4");

            if (dateMarti4 != null) {
                errorString = null;
                Date Marti4 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Marti4 = formatter.parse(dateMarti4);
                } catch (ParseException var44) {
                    var44.printStackTrace();
                }

                java.sql.Date sqlMarti4 = new java.sql.Date(Marti4.getTime());
                inregistrari inregistrari = new inregistrari(sqlMarti4, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlMarti4, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var43) {
                    var43.printStackTrace();
                    errorString = var43.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMiercuri4 = request.getParameter("Miercuri4");

            if (dateMiercuri4 != null) {
                errorString = null;
                Date Miercuri4 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Miercuri4 = formatter.parse(dateMiercuri4);
                } catch (ParseException var42) {
                    var42.printStackTrace();
                }

                java.sql.Date sqlMiercuri4 = new java.sql.Date(Miercuri4.getTime());
                inregistrari inregistrari = new inregistrari(sqlMiercuri4, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlMiercuri4, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var41) {
                    var41.printStackTrace();
                    errorString = var41.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateJoi4 = request.getParameter("Joi4");
            String dateVineri4;
            if (dateJoi4 != null) {
                errorString = null;
                Date Joi4 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Joi4 = formatter.parse(dateJoi4);
                } catch (ParseException var40) {
                    var40.printStackTrace();
                }

                java.sql.Date sqlJoi4 = new java.sql.Date(Joi4.getTime());
                inregistrari inregistrari = new inregistrari(sqlJoi4, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlJoi4, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var39) {
                    var39.printStackTrace();
                    dateVineri4 = var39.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            dateVineri4 = request.getParameter("Vineri4");
            if (dateVineri4 != null) {
                errorString = null;
                Date Vineri4 = null;
                formatter = new SimpleDateFormat("yyyy-MM-dd");

                try {
                    Vineri4 = formatter.parse(dateVineri4);
                } catch (ParseException var38) {
                    var38.printStackTrace();
                }

                java.sql.Date sqlVineri4 = new java.sql.Date(Vineri4.getTime());
                inregistrari inregistrari = new inregistrari(sqlVineri4, email, it2pk_fk);

                try {
                    DBUtilis.deleteInregistrare(conn, sqlVineri4, email);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var37) {
                    var37.printStackTrace();
                    errorString = var37.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            errorString = null;
            String w = request.getParameter("w");
            if (errorString != null) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("editInregistrari.jsp");
                dispatcher.forward(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/editInregistrari" + w);
            }

        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
