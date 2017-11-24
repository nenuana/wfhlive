
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
        urlPatterns = {"/doEditInregistrari"}
)
public class doEditInregistrari extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public doEditInregistrari() {
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
                } catch (ClassNotFoundException var99) {
                    throw new ServletException("Error loading Google JDBC Driver", var99);
                }
            } else {
                url = System.getProperty("ae-cloudsql.local-database-url");
            }

            this.log("connecting to: " + url);
            Connection conn = null;

            try {
                conn = DriverManager.getConnection(url);
            } catch (SQLException var98) {
                var98.printStackTrace();
                this.log("nu s-a conectat");
            }



            String email = request.getParameter("email");

            String dateLuni = request.getParameter("Luni");
            Date Luni;
            String errorString;
            java.sql.Date sqlLuni;

            if (dateLuni != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Luni = null;

                try {
                    Luni = formatter.parse(dateLuni);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlLuni = new java.sql.Date(Luni.getTime());
                inregistrari inregistrari = new inregistrari(sqlLuni, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMarti = request.getParameter("Marti");
            Date Marti;

            java.sql.Date sqlMarti;

            if (dateMarti != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Marti = null;

                try {
                    Marti = formatter.parse(dateMarti);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlMarti = new java.sql.Date(Marti.getTime());
                inregistrari inregistrari = new inregistrari(sqlMarti, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMiercuri = request.getParameter("Miercuri");
            Date Miercuri;

            java.sql.Date sqlMiercuri;

            if (dateMiercuri != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Miercuri = null;

                try {
                    Miercuri = formatter.parse(dateMiercuri);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlMiercuri = new java.sql.Date(Miercuri.getTime());
                inregistrari inregistrari = new inregistrari(sqlMiercuri, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }


            String dateJoi = request.getParameter("Joi");
            Date Joi;

            java.sql.Date sqlJoi;

            if (dateJoi != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Joi = null;

                try {
                    Joi = formatter.parse(dateJoi);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlJoi = new java.sql.Date(Joi.getTime());
                inregistrari inregistrari = new inregistrari(sqlJoi, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateVineri = request.getParameter("Vineri");
            Date Vineri;

            java.sql.Date sqlVineri;

            if (dateVineri != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Vineri = null;

                try {
                    Vineri = formatter.parse(dateVineri);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlVineri = new java.sql.Date(Vineri.getTime());
                inregistrari inregistrari = new inregistrari(sqlVineri, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            //saptamana 2


            String dateLuni2 = request.getParameter("Luni2");
            Date Luni2;

            java.sql.Date sqlLuni2;

            if (dateLuni2 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Luni2 = null;

                try {
                    Luni2 = formatter.parse(dateLuni2);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //

                sqlLuni2 = new java.sql.Date(Luni2.getTime());
                inregistrari inregistrari = new inregistrari(sqlLuni2, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMarti2 = request.getParameter("Marti2");

            Date Marti2;

            java.sql.Date sqlMarti2;

            if (dateMarti2 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Marti2 = null;

                try {
                    Marti2 = formatter.parse(dateMarti2);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }


                //incercare
                 String cerere = request.getParameter("it2pk_fk");
                 int cerereint = 0;
                 try{
                    cerereint = Integer.parseInt(cerere);
                 }catch (Exception e){}
                 //


                sqlMarti2 = new java.sql.Date(Marti2.getTime());
                System.out.println("sqlMarti2");
                System.out.println(sqlMarti2);
                inregistrari inregistrari = new inregistrari(sqlMarti2, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMiercuri2 = request.getParameter("Miercuri2");
            Date Miercuri2;

            java.sql.Date sqlMiercuri2;

            if (dateMiercuri2 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Miercuri2 = null;

                try {
                    Miercuri2 = formatter.parse(dateMiercuri2);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlMiercuri2 = new java.sql.Date(Miercuri2.getTime());
                inregistrari inregistrari = new inregistrari(sqlMiercuri2, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }


            String dateJoi2 = request.getParameter("Joi2");
            Date Joi2;

            java.sql.Date sqlJoi2;

            if (dateJoi2 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Joi2 = null;

                try {
                    Joi2 = formatter.parse(dateJoi2);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //


                sqlJoi2 = new java.sql.Date(Joi2.getTime());
                inregistrari inregistrari = new inregistrari(sqlJoi2, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateVineri2 = request.getParameter("Vineri2");
            Date Vineri2;

            java.sql.Date sqlVineri2;

            if (dateVineri2 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Vineri2 = null;

                try {
                    Vineri2 = formatter.parse(dateVineri2);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //


                sqlVineri2 = new java.sql.Date(Vineri2.getTime());
                inregistrari inregistrari = new inregistrari(sqlVineri2, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }





            // sapt 3


            String dateLuni3 = request.getParameter("Luni3");
            Date Luni3;

            java.sql.Date sqlLuni3;

            if (dateLuni3 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Luni3 = null;

                try {
                    Luni3 = formatter.parse(dateLuni3);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlLuni3 = new java.sql.Date(Luni3.getTime());
                inregistrari inregistrari = new inregistrari(sqlLuni3, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMarti3 = request.getParameter("Marti3");
            Date Marti3;

            java.sql.Date sqlMarti3;

            if (dateMarti3 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Marti3 = null;

                try {
                    Marti3 = formatter.parse(dateMarti3);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //


                sqlMarti3 = new java.sql.Date(Marti3.getTime());
                inregistrari inregistrari = new inregistrari(sqlMarti3, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMiercuri3 = request.getParameter("Miercuri3");
            Date Miercuri3;

            java.sql.Date sqlMiercuri3;

            if (dateMiercuri3 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Miercuri3 = null;

                try {
                    Miercuri3 = formatter.parse(dateMiercuri3);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlMiercuri3 = new java.sql.Date(Miercuri3.getTime());
                inregistrari inregistrari = new inregistrari(sqlMiercuri3, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }


            String dateJoi3 = request.getParameter("Joi3");
            Date Joi3;

            java.sql.Date sqlJoi3;

            if (dateJoi3 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Joi3 = null;

                try {
                    Joi3 = formatter.parse(dateJoi3);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlJoi3 = new java.sql.Date(Joi3.getTime());
                inregistrari inregistrari = new inregistrari(sqlJoi3, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateVineri3 = request.getParameter("Vineri3");
            Date Vineri3;

            java.sql.Date sqlVineri3;

            if (dateVineri3 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Vineri3 = null;

                try {
                    Vineri3 = formatter.parse(dateVineri3);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlVineri3 = new java.sql.Date(Vineri3.getTime());
                inregistrari inregistrari = new inregistrari(sqlVineri3, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }




            //


            //sapt 4



            String dateLuni4 = request.getParameter("Luni4");
            Date Luni4;

            java.sql.Date sqlLuni4;

            if (dateLuni4 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Luni4 = null;

                try {
                    Luni4 = formatter.parse(dateLuni4);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //


                sqlLuni4 = new java.sql.Date(Luni4.getTime());
                inregistrari inregistrari = new inregistrari(sqlLuni4, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMarti4 = request.getParameter("Marti4");
            Date Marti4;

            java.sql.Date sqlMarti4;

            if (dateMarti4 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Marti4 = null;

                try {
                    Marti4 = formatter.parse(dateMarti4);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }


                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //


                sqlMarti4 = new java.sql.Date(Marti4.getTime());
                inregistrari inregistrari = new inregistrari(sqlMarti4, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateMiercuri4 = request.getParameter("Miercuri4");
            Date Miercuri4;

            java.sql.Date sqlMiercuri4;

            if (dateMiercuri4 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Miercuri4 = null;

                try {
                    Miercuri4 = formatter.parse(dateMiercuri4);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }



                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //

                sqlMiercuri4 = new java.sql.Date(Miercuri4.getTime());
                inregistrari inregistrari = new inregistrari(sqlMiercuri4, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }


            String dateJoi4 = request.getParameter("Joi4");
            Date Joi4;

            java.sql.Date sqlJoi4;

            if (dateJoi4 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Joi4 = null;

                try {
                    Joi4 = formatter.parse(dateJoi4);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlJoi4 = new java.sql.Date(Joi4.getTime());
                inregistrari inregistrari = new inregistrari(sqlJoi4, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }

            String dateVineri4 = request.getParameter("Vineri4");
            Date Vineri4;

            java.sql.Date sqlVineri4;

            if (dateVineri4 != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                Vineri4 = null;

                try {
                    Vineri4 = formatter.parse(dateVineri4);
                } catch (ParseException var97) {
                    var97.printStackTrace();
                }

                //incercare
                String cerere = request.getParameter("it2pk_fk");
                int cerereint = 0;
                try{
                    cerereint = Integer.parseInt(cerere);
                }catch (Exception e){}
                //



                sqlVineri4 = new java.sql.Date(Vineri4.getTime());
                inregistrari inregistrari = new inregistrari(sqlVineri4, email, cerereint);
                errorString = null;

                try {
                    DBUtilis.insertInregistrare(conn, inregistrari);
                    System.out.print("s-a intregistrat cu succes");
                } catch (SQLException var95) {
                    var95.printStackTrace();
                    errorString = var95.getMessage();
                }

                request.setAttribute("inregistrari", inregistrari);
            }


            //


            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            String w = request.getParameter("w");
            errorString = null;
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
