package Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet(
        urlPatterns = {"/editInregistrari"}
)
public class EditInregistrari extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EditInregistrari() {
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
                } catch (ClassNotFoundException var236) {
                    throw new ServletException("Error loading Google JDBC Driver", var236);
                }
            } else {
                url = System.getProperty("ae-cloudsql.local-database-url");
            }

            this.log("connecting to: " + url);
            Connection conn = null;

            try {
                conn = DriverManager.getConnection(url);
            } catch (SQLException var235) {
                var235.printStackTrace();
                this.log("nu s-a conectat");
            }





            try {
                HttpSession session = request.getSession(true);
                String email = (String)session.getAttribute("email");
                String Name = (String)session.getAttribute("Name");
                String poza = (String)session.getAttribute("poza");
                System.out.println("email");
                System.out.println(email);
                Calendar cal = GregorianCalendar.getInstance(Locale.FRANCE);
                Calendar cal2 = GregorianCalendar.getInstance(Locale.FRANCE);
                cal2.set(11, 0);
                cal2.clear(12);
                cal2.clear(13);
                cal2.clear(14);
                cal2.set(7, cal2.getFirstDayOfWeek());
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
                String Luni = formatter.format(cal2.getTime());
                Date luni = null;
                luni = formatter.parse(Luni);
                java.sql.Date sqlLuni = new java.sql.Date(luni.getTime());
                cal2.add(7, 1);
                String Marti = formatter.format(cal2.getTime());
                Date marti = null;
                marti = formatter.parse(Marti);
                java.sql.Date sqlMarti = new java.sql.Date(marti.getTime());
                cal2.add(7, 1);
                String Miercuri = formatter.format(cal2.getTime());
                Date miercuri = null;
                miercuri = formatter.parse(Miercuri);
                java.sql.Date sqlMiercuri = new java.sql.Date(miercuri.getTime());
                cal2.add(7, 1);
                String Joi = formatter.format(cal2.getTime());
                Date joi = null;
                joi = formatter.parse(Joi);
                java.sql.Date sqlJoi = new java.sql.Date(joi.getTime());
                cal2.add(7, 1);
                String Vineri = formatter.format(cal2.getTime());
                Date vineri = null;
                vineri = formatter.parse(Vineri);
                java.sql.Date sqlVineri = new java.sql.Date(vineri.getTime());
                cal2.add(7, 3);
                String Luni2 = formatter.format(cal2.getTime());
                Date luni2 = null;
                luni2 = formatter.parse(Luni2);
                java.sql.Date sqlLuni2 = new java.sql.Date(luni2.getTime());
                cal2.add(7, 1);
                String Marti2 = formatter.format(cal2.getTime());
                Date marti2 = null;
                marti2 = formatter.parse(Marti2);
                java.sql.Date sqlMarti2 = new java.sql.Date(marti2.getTime());
                cal2.add(7, 1);
                String Miercuri2 = formatter.format(cal2.getTime());
                Date miercuri2 = null;
                miercuri2 = formatter.parse(Miercuri2);
                java.sql.Date sqlMiercuri2 = new java.sql.Date(miercuri2.getTime());
                cal2.add(7, 1);
                String Joi2 = formatter.format(cal2.getTime());
                Date joi2 = null;
                joi2 = formatter.parse(Joi2);
                java.sql.Date sqlJoi2 = new java.sql.Date(joi2.getTime());
                cal2.add(7, 1);
                String Vineri2 = formatter.format(cal2.getTime());
                Date vineri2 = null;
                vineri2 = formatter.parse(Vineri2);
                java.sql.Date sqlVineri2 = new java.sql.Date(vineri2.getTime());
                cal2.add(7, 3);
                String Luni3 = formatter.format(cal2.getTime());
                Date luni3 = null;
                luni3 = formatter.parse(Luni3);
                java.sql.Date sqlLuni3 = new java.sql.Date(luni3.getTime());
                cal2.add(7, 1);
                String Marti3 = formatter.format(cal2.getTime());
                Date marti3 = null;
                marti3 = formatter.parse(Marti3);
                java.sql.Date sqlMarti3 = new java.sql.Date(marti3.getTime());
                cal2.add(7, 1);
                String Miercuri3 = formatter.format(cal2.getTime());
                Date miercuri3 = null;
                miercuri3 = formatter.parse(Miercuri3);
                java.sql.Date sqlMiercuri3 = new java.sql.Date(miercuri3.getTime());
                cal2.add(7, 1);
                String Joi3 = formatter.format(cal2.getTime());
                Date joi3 = null;
                joi3 = formatter.parse(Joi3);
                java.sql.Date sqlJoi3 = new java.sql.Date(joi3.getTime());
                cal2.add(7, 1);
                String Vineri3 = formatter.format(cal2.getTime());
                Date vineri3 = null;
                vineri3 = formatter.parse(Vineri3);
                java.sql.Date sqlVineri3 = new java.sql.Date(vineri3.getTime());
                cal2.add(7, 3);
                String Luni4 = formatter.format(cal2.getTime());
                Date luni4 = null;
                luni4 = formatter.parse(Luni4);
                java.sql.Date sqlLuni4 = new java.sql.Date(luni4.getTime());
                cal2.add(7, 1);
                String Marti4 = formatter.format(cal2.getTime());
                Date marti4 = null;
                marti4 = formatter.parse(Marti4);
                java.sql.Date sqlMarti4 = new java.sql.Date(marti4.getTime());
                cal2.add(7, 1);
                String Miercuri4 = formatter.format(cal2.getTime());
                Date miercuri4 = null;
                miercuri4 = formatter.parse(Miercuri4);
                java.sql.Date sqlMiercuri4 = new java.sql.Date(miercuri4.getTime());
                cal2.add(7, 1);
                String Joi4 = formatter.format(cal2.getTime());
                Date joi4 = null;
                joi4 = formatter.parse(Joi4);
                java.sql.Date sqlJoi4 = new java.sql.Date(joi4.getTime());
                cal2.add(7, 1);
                String Vineri4 = formatter.format(cal2.getTime());
                Date vineri4 = null;
                vineri4 = formatter.parse(Vineri4);
                java.sql.Date sqlVineri4 = new java.sql.Date(vineri4.getTime());
                String Dataazi = formatter.format(cal.getTime());
                Date dataazi = null;
                dataazi = formatter.parse(Dataazi);
                java.sql.Date sqldataazi = new java.sql.Date(dataazi.getTime());
                System.out.println("data azi");
                System.out.println(sqldataazi);
                it2 it2pk = DBUtilis.finddepandunit(conn, email);
                Integer it2pk_fk = it2pk.getIt2pk();
                System.out.println("fk");
                System.out.println(it2pk_fk);
                it2 unit = DBUtilis.finddepandunit(conn, email);
                String errorString = null;
                List list8 = null;
                String unitate = unit.getUnit();
                Integer maxwfh_unit = unit.getMaxwfh_unit();
                Integer nr = DBUtilis.countsaptamana(conn, email, sqlLuni, sqlVineri);
                Integer nr_sapt2 = DBUtilis.countsaptamana(conn, email, sqlLuni2, sqlVineri2);
                Integer nr_sapt3 = DBUtilis.countsaptamana(conn, email, sqlLuni3, sqlVineri3);
                Integer nr_sapt4 = DBUtilis.countsaptamana(conn, email, sqlLuni4, sqlVineri4);
                Integer nr_luni = DBUtilis.countluni(conn, sqlLuni, unitate);
                Integer nr_marti = DBUtilis.countluni(conn, sqlMarti, unitate);
                Integer nr_miercuri = DBUtilis.countluni(conn, sqlMiercuri, unitate);
                Integer nr_joi = DBUtilis.countluni(conn, sqlJoi, unitate);
                Integer nr_vineri = DBUtilis.countluni(conn, sqlVineri, unitate);
                Integer nr_luni2 = DBUtilis.countluni(conn, sqlLuni2, unitate);
                Integer nr_marti2 = DBUtilis.countluni(conn, sqlMarti2, unitate);
                Integer nr_miercuri2 = DBUtilis.countluni(conn, sqlMiercuri2, unitate);
                Integer nr_joi2 = DBUtilis.countluni(conn, sqlJoi2, unitate);
                Integer nr_vineri2 = DBUtilis.countluni(conn, sqlVineri2, unitate);
                Integer nr_luni3 = DBUtilis.countluni(conn, sqlLuni3, unitate);
                Integer nr_marti3 = DBUtilis.countluni(conn, sqlMarti3, unitate);
                Integer nr_miercuri3 = DBUtilis.countluni(conn, sqlMiercuri3, unitate);
                Integer nr_joi3 = DBUtilis.countluni(conn, sqlJoi3, unitate);
                Integer nr_vineri3 = DBUtilis.countluni(conn, sqlVineri3, unitate);
                Integer nr_luni4 = DBUtilis.countluni(conn, sqlLuni4, unitate);
                Integer nr_marti4 = DBUtilis.countluni(conn, sqlMarti4, unitate);
                Integer nr_miercuri4 = DBUtilis.countluni(conn, sqlMiercuri4, unitate);
                Integer nr_joi4 = DBUtilis.countluni(conn, sqlJoi4, unitate);
                Integer nr_vineri4 = DBUtilis.countluni(conn, sqlVineri4, unitate);

                try {
                    list8 = DBUtilis.querytotiUtilizatoriicufk(conn, unit.getUnit());
                    System.out.println("s-a facut query toti utilizatorii: ");
                    System.out.println(list8);
                } catch (SQLException var233) {
                    var233.printStackTrace();
                    errorString = var233.getMessage();
                }

                if (errorString != null && list8 == null) {
                    response.sendRedirect(request.getServletPath() + "/productList");
                } else {
                    ArrayList unitlist = null;

                    try {
                        unitlist = DBUtilis.comboUnit(conn);
                        System.out.println("avem unitate");
                        System.out.println(unitlist);
                    } catch (SQLException var232) {
                        var232.printStackTrace();
                        errorString = var232.getMessage();
                    }

                    List wfhzi = null;

                    try {
                        wfhzi = DBUtilis.wfhzi(conn, sqlLuni);
                    } catch (SQLException var231) {
                        var231.printStackTrace();
                        errorString = var231.getMessage();
                    }

                    List wfhzimarti = null;

                    try {
                        wfhzimarti = DBUtilis.wfhzi(conn, sqlMarti);
                    } catch (SQLException var230) {
                        var230.printStackTrace();
                        errorString = var230.getMessage();
                    }

                    List wfhzimiercuri = null;

                    try {
                        wfhzimiercuri = DBUtilis.wfhzi(conn, sqlMiercuri);
                    } catch (SQLException var229) {
                        var229.printStackTrace();
                        errorString = var229.getMessage();
                    }

                    List wfhzijoi = null;

                    try {
                        wfhzijoi = DBUtilis.wfhzi(conn, sqlJoi);
                    } catch (SQLException var228) {
                        var228.printStackTrace();
                        errorString = var228.getMessage();
                    }

                    List wfhzivineri = null;

                    try {
                        wfhzivineri = DBUtilis.wfhzi(conn, sqlVineri);
                    } catch (SQLException var227) {
                        var227.printStackTrace();
                        errorString = var227.getMessage();
                    }

                    List wfhzi2 = null;

                    try {
                        wfhzi2 = DBUtilis.wfhzi(conn, sqlLuni2);
                    } catch (SQLException var226) {
                        var226.printStackTrace();
                        errorString = var226.getMessage();
                    }

                    List wfhzimarti2 = null;

                    try {
                        wfhzimarti2 = DBUtilis.wfhzi(conn, sqlMarti2);
                    } catch (SQLException var225) {
                        var225.printStackTrace();
                        errorString = var225.getMessage();
                    }

                    List wfhzimiercuri2 = null;

                    try {
                        wfhzimiercuri2 = DBUtilis.wfhzi(conn, sqlMiercuri2);
                    } catch (SQLException var224) {
                        var224.printStackTrace();
                        errorString = var224.getMessage();
                    }

                    List wfhzijoi2 = null;

                    try {
                        wfhzijoi2 = DBUtilis.wfhzi(conn, sqlJoi2);
                    } catch (SQLException var223) {
                        var223.printStackTrace();
                        errorString = var223.getMessage();
                    }

                    List wfhzivineri2 = null;

                    try {
                        wfhzivineri2 = DBUtilis.wfhzi(conn, sqlVineri2);
                    } catch (SQLException var222) {
                        var222.printStackTrace();
                        errorString = var222.getMessage();
                    }

                    List wfhzi3 = null;

                    try {
                        wfhzi3 = DBUtilis.wfhzi(conn, sqlLuni3);
                    } catch (SQLException var221) {
                        var221.printStackTrace();
                        errorString = var221.getMessage();
                    }

                    List wfhzimarti3 = null;

                    try {
                        wfhzimarti3 = DBUtilis.wfhzi(conn, sqlMarti3);
                    } catch (SQLException var220) {
                        var220.printStackTrace();
                        errorString = var220.getMessage();
                    }

                    List wfhzimiercuri3 = null;

                    try {
                        wfhzimiercuri3 = DBUtilis.wfhzi(conn, sqlMiercuri3);
                    } catch (SQLException var219) {
                        var219.printStackTrace();
                        errorString = var219.getMessage();
                    }

                    List wfhzijoi3 = null;

                    try {
                        wfhzijoi3 = DBUtilis.wfhzi(conn, sqlJoi3);
                    } catch (SQLException var218) {
                        var218.printStackTrace();
                        errorString = var218.getMessage();
                    }

                    List wfhzivineri3 = null;

                    try {
                        wfhzivineri3 = DBUtilis.wfhzi(conn, sqlVineri3);
                    } catch (SQLException var217) {
                        var217.printStackTrace();
                        errorString = var217.getMessage();
                    }

                    List wfhzi4 = null;

                    try {
                        wfhzi4 = DBUtilis.wfhzi(conn, sqlLuni4);
                    } catch (SQLException var216) {
                        var216.printStackTrace();
                        errorString = var216.getMessage();
                    }

                    List wfhzimarti4 = null;

                    try {
                        wfhzimarti4 = DBUtilis.wfhzi(conn, sqlMarti4);
                    } catch (SQLException var215) {
                        var215.printStackTrace();
                        errorString = var215.getMessage();
                    }

                    List wfhzimiercuri4 = null;

                    try {
                        wfhzimiercuri4 = DBUtilis.wfhzi(conn, sqlMiercuri4);
                    } catch (SQLException var214) {
                        var214.printStackTrace();
                        errorString = var214.getMessage();
                    }

                    List wfhzijoi4 = null;

                    try {
                        wfhzijoi4 = DBUtilis.wfhzi(conn, sqlJoi4);
                    } catch (SQLException var213) {
                        var213.printStackTrace();
                        errorString = var213.getMessage();
                    }

                    List wfhzivineri4 = null;

                    try {
                        wfhzivineri4 = DBUtilis.wfhzi(conn, sqlVineri4);
                    } catch (SQLException var212) {
                        var212.printStackTrace();
                        errorString = var212.getMessage();
                    }

                    Integer countwfhluni = DBUtilis.countwfh(conn, sqlLuni);
                    Integer countwfhluni2 = DBUtilis.countwfh(conn, sqlLuni2);
                    Integer countwfhluni3 = DBUtilis.countwfh(conn, sqlLuni3);
                    Integer countwfhluni4 = DBUtilis.countwfh(conn, sqlLuni4);
                    Integer countwfhmarti = DBUtilis.countwfh(conn, sqlMarti);
                    Integer countwfhmarti2 = DBUtilis.countwfh(conn, sqlMarti2);
                    Integer countwfhmarti3 = DBUtilis.countwfh(conn, sqlMarti3);
                    Integer countwfhmarti4 = DBUtilis.countwfh(conn, sqlMarti4);
                    Integer countwfhmiercuri = DBUtilis.countwfh(conn, sqlMiercuri);
                    Integer countwfhmiercuri2 = DBUtilis.countwfh(conn, sqlMiercuri2);
                    Integer countwfhmiercuri3 = DBUtilis.countwfh(conn, sqlMiercuri3);
                    Integer countwfhmiercuri4 = DBUtilis.countwfh(conn, sqlMiercuri4);
                    Integer countwfhjoi = DBUtilis.countwfh(conn, sqlJoi);
                    Integer countwfhjoi2 = DBUtilis.countwfh(conn, sqlJoi2);
                    Integer countwfhjoi3 = DBUtilis.countwfh(conn, sqlJoi3);
                    Integer countwfhjoi4 = DBUtilis.countwfh(conn, sqlJoi4);
                    Integer countwfhvineri = DBUtilis.countwfh(conn, sqlVineri);
                    Integer countwfhvineri2 = DBUtilis.countwfh(conn, sqlVineri2);
                    Integer countwfhvineri3 = DBUtilis.countwfh(conn, sqlVineri3);
                    Integer countwfhvineri4 = DBUtilis.countwfh(conn, sqlVineri4);
                    List wfhluni = null;
                    wfhluni = DBUtilis.wfhluni(conn, sqlLuni);
                    List wfhluni2 = null;
                    wfhluni2 = DBUtilis.wfhluni(conn, sqlLuni2);
                    List wfhluni3 = null;
                    wfhluni3 = DBUtilis.wfhluni(conn, sqlLuni3);
                    List wfhluni4 = null;
                    wfhluni4 = DBUtilis.wfhluni(conn, sqlLuni4);
                    List wfhmarti = DBUtilis.wfhluni(conn, sqlMarti);
                    List wfhmarti2 = DBUtilis.wfhluni(conn, sqlMarti2);
                    List wfhmarti3 = DBUtilis.wfhluni(conn, sqlMarti3);
                    List wfhmarti4 = DBUtilis.wfhluni(conn, sqlMarti4);
                    List wfhmiercuri = DBUtilis.wfhluni(conn, sqlMiercuri);
                    List wfhmiercuri2 = DBUtilis.wfhluni(conn, sqlMiercuri2);
                    List wfhmiercuri3 = DBUtilis.wfhluni(conn, sqlMiercuri3);
                    List wfhmiercuri4 = DBUtilis.wfhluni(conn, sqlMiercuri4);
                    List wfhjoi = DBUtilis.wfhluni(conn, sqlJoi);
                    List wfhjoi2 = DBUtilis.wfhluni(conn, sqlJoi2);
                    List wfhjoi3 = DBUtilis.wfhluni(conn, sqlJoi3);
                    List wfhjoi4 = DBUtilis.wfhluni(conn, sqlJoi4);
                    List wfhvineri = DBUtilis.wfhluni(conn, sqlVineri);
                    List wfhvineri2 = DBUtilis.wfhluni(conn, sqlVineri2);
                    List wfhvineri3 = DBUtilis.wfhluni(conn, sqlVineri3);
                    List wfhvineri4 = DBUtilis.wfhluni(conn, sqlVineri4);
                    Integer verifluni = null;
                    verifluni = DBUtilis.countverifdata(conn, email, sqlLuni);
                    Integer verifmarti = null;
                    verifmarti = DBUtilis.countverifdata(conn, email, sqlMarti);
                    Integer verifmiercuri = null;
                    verifmiercuri = DBUtilis.countverifdata(conn, email, sqlMiercuri);
                    Integer verifjoi = null;
                    verifjoi = DBUtilis.countverifdata(conn, email, sqlJoi);
                    Integer verifvineri = null;
                    verifvineri = DBUtilis.countverifdata(conn, email, sqlVineri);
                    Integer verifluni2 = null;
                    verifluni2 = DBUtilis.countverifdata(conn, email, sqlLuni2);
                    Integer verifmarti2 = null;
                    verifmarti2 = DBUtilis.countverifdata(conn, email, sqlMarti2);
                    Integer verifmiercuri2 = null;
                    verifmiercuri2 = DBUtilis.countverifdata(conn, email, sqlMiercuri2);
                    Integer verifjoi2 = null;
                    verifjoi2 = DBUtilis.countverifdata(conn, email, sqlJoi2);
                    Integer verifvineri2 = null;
                    verifvineri2 = DBUtilis.countverifdata(conn, email, sqlVineri2);
                    Integer verifluni3 = null;
                    verifluni3 = DBUtilis.countverifdata(conn, email, sqlLuni3);
                    Integer verifmarti3 = null;
                    verifmarti3 = DBUtilis.countverifdata(conn, email, sqlMarti3);
                    Integer verifmiercuri3 = null;
                    verifmiercuri3 = DBUtilis.countverifdata(conn, email, sqlMiercuri3);
                    Integer verifjoi3 = null;
                    verifjoi3 = DBUtilis.countverifdata(conn, email, sqlJoi3);
                    Integer verifvineri3 = null;
                    verifvineri3 = DBUtilis.countverifdata(conn, email, sqlVineri3);
                    Integer verifluni4 = null;
                    verifluni4 = DBUtilis.countverifdata(conn, email, sqlLuni4);
                    Integer verifmarti4 = null;
                    verifmarti4 = DBUtilis.countverifdata(conn, email, sqlMarti4);
                    Integer verifmiercuri4 = null;
                    verifmiercuri4 = DBUtilis.countverifdata(conn, email, sqlMiercuri4);
                    Integer verifjoi4 = null;
                    verifjoi4 = DBUtilis.countverifdata(conn, email, sqlJoi4);
                    Integer verifvineri4 = null;
                    verifvineri4 = DBUtilis.countverifdata(conn, email, sqlVineri4);
                    Integer countvineri = DBUtilis.countzivineri(conn, sqlVineri, sqlVineri2, sqlVineri3, sqlVineri4, email);
                    Integer verificaredataluni = Integer.valueOf(0);
                    if (Luni.compareTo(Dataazi) > 0) {
                        verificaredataluni = Integer.valueOf(0);

                    } else {
                        verificaredataluni = Integer.valueOf(1);

                    }

                    Integer verificaredataluni2 = Integer.valueOf(0);
                    if (Luni2.compareTo(Dataazi) > 0) {
                        verificaredataluni2 = Integer.valueOf(0);

                    } else {
                        verificaredataluni2 = Integer.valueOf(1);

                    }

                    Integer verificaredataluni3 = Integer.valueOf(0);
                    if (Luni3.compareTo(Dataazi) > 0) {
                        verificaredataluni3 = Integer.valueOf(0);

                    } else {
                        verificaredataluni3 = Integer.valueOf(1);

                    }

                    Integer verificaredataluni4 = Integer.valueOf(0);
                    if (Luni4.compareTo(Dataazi) > 0) {
                        verificaredataluni4 = Integer.valueOf(0);

                    } else {
                        verificaredataluni4 = Integer.valueOf(1);

                    }

                    Integer verificaredatamarti = Integer.valueOf(0);
                    if (Marti.compareTo(Dataazi) > 0) {
                        verificaredatamarti = Integer.valueOf(0);

                    } else {
                        verificaredatamarti = Integer.valueOf(1);

                    }

                    Integer verificaredatamarti2 = Integer.valueOf(0);
                    if (Marti2.compareTo(Dataazi) > 0) {
                        verificaredatamarti2 = Integer.valueOf(0);

                    } else {
                        verificaredatamarti2 = Integer.valueOf(1);

                    }

                    Integer verificaredatamarti3 = Integer.valueOf(0);
                    if (Marti3.compareTo(Dataazi) > 0) {
                        verificaredatamarti3 = Integer.valueOf(0);

                    } else {
                        verificaredatamarti3 = Integer.valueOf(1);

                    }

                    Integer verificaredatamarti4 = Integer.valueOf(0);
                    if (Marti4.compareTo(Dataazi) > 0) {
                        verificaredatamarti4 = Integer.valueOf(0);

                    } else {
                        verificaredatamarti4 = Integer.valueOf(1);

                    }

                    Integer verificaredatamiercuri = Integer.valueOf(0);
                    if (Miercuri.compareTo(Dataazi) > 0) {
                        verificaredatamiercuri = Integer.valueOf(0);

                    } else {
                        verificaredatamiercuri = Integer.valueOf(1);

                    }

                    Integer verificaredatamiercuri2 = Integer.valueOf(0);
                    if (Miercuri2.compareTo(Dataazi) > 0) {
                        verificaredatamiercuri2 = Integer.valueOf(0);
                    } else {
                        verificaredatamiercuri2 = Integer.valueOf(1);

                    }

                    Integer verificaredatamiercuri3 = Integer.valueOf(0);
                    if (Miercuri3.compareTo(Dataazi) > 0) {
                        verificaredatamiercuri3 = Integer.valueOf(0);

                    } else {
                        verificaredatamiercuri3 = Integer.valueOf(1);

                    }

                    Integer verificaredatamiercuri4 = Integer.valueOf(0);
                    if (Miercuri4.compareTo(Dataazi) > 0) {
                        verificaredatamiercuri4 = Integer.valueOf(0);

                    } else {
                        verificaredatamiercuri4 = Integer.valueOf(1);

                    }

                    Integer verificaredatajoi = Integer.valueOf(0);
                    if (Joi.compareTo(Dataazi) > 0) {
                        verificaredatajoi = Integer.valueOf(0);

                    } else {
                        verificaredatajoi = Integer.valueOf(1);

                    }

                    Integer verificaredatajoi2 = Integer.valueOf(0);
                    if (Joi2.compareTo(Dataazi) > 0) {
                        verificaredatajoi2 = Integer.valueOf(0);

                    } else {
                        verificaredatajoi2 = Integer.valueOf(1);

                    }

                    Integer verificaredatajoi3 = Integer.valueOf(0);
                    if (Joi3.compareTo(Dataazi) > 0) {
                        verificaredatajoi3 = Integer.valueOf(0);

                    } else {
                        verificaredatajoi3 = Integer.valueOf(1);

                    }

                    Integer verificaredatajoi4 = Integer.valueOf(0);
                    if (Joi4.compareTo(Dataazi) > 0) {
                        verificaredatajoi4 = Integer.valueOf(0);

                    } else {
                        verificaredatajoi4 = Integer.valueOf(1);

                    }

                    Integer verificaredatavineri = Integer.valueOf(0);
                    if (Vineri.compareTo(Dataazi) > 0) {
                        verificaredatavineri = Integer.valueOf(0);

                    } else {
                        verificaredatavineri = Integer.valueOf(1);

                    }

                    Integer verificaredatavineri2 = Integer.valueOf(0);
                    if (Vineri2.compareTo(Dataazi) > 0) {
                        verificaredatavineri2 = Integer.valueOf(0);

                    } else {
                        verificaredatavineri2 = Integer.valueOf(1);

                    }

                    Integer verificaredatavineri3 = Integer.valueOf(0);
                    if (Vineri3.compareTo(Dataazi) > 0) {
                        verificaredatavineri3 = Integer.valueOf(0);

                    } else {
                        verificaredatavineri3 = Integer.valueOf(1);

                    }

                    Integer verificaredatavineri4 = Integer.valueOf(0);
                    if (Vineri4.compareTo(Dataazi) > 0) {
                        verificaredatavineri4 = Integer.valueOf(0);

                    } else {
                        verificaredatavineri4 = Integer.valueOf(1);

                    }

                    System.out.println("max");
                    System.out.println(maxwfh_unit);
                    request.setAttribute("maxwfh_unit", maxwfh_unit);
                    request.setAttribute("verificaredataluni", verificaredataluni);
                    request.setAttribute("verificaredataluni2", verificaredataluni2);
                    request.setAttribute("verificaredataluni3", verificaredataluni3);
                    request.setAttribute("verificaredataluni4", verificaredataluni4);
                    request.setAttribute("verificaredatamarti", verificaredatamarti);
                    request.setAttribute("verificaredatamarti2", verificaredatamarti2);
                    request.setAttribute("verificaredatamarti3", verificaredatamarti3);
                    request.setAttribute("verificaredatamarti4", verificaredatamarti4);
                    request.setAttribute("verificaredatamiercuri", verificaredatamiercuri);
                    request.setAttribute("verificaredatamiercuri2", verificaredatamiercuri2);
                    request.setAttribute("verificaredatamiercuri3", verificaredatamiercuri3);
                    request.setAttribute("verificaredatamiercuri4", verificaredatamiercuri4);
                    request.setAttribute("verificaredatajoi", verificaredatajoi);
                    request.setAttribute("verificaredatajoi2", verificaredatajoi2);
                    request.setAttribute("verificaredatajoi3", verificaredatajoi3);
                    request.setAttribute("verificaredatajoi4", verificaredatajoi4);
                    request.setAttribute("verificaredatavineri", verificaredatavineri);
                    request.setAttribute("verificaredatavineri2", verificaredatavineri2);
                    request.setAttribute("verificaredatavineri3", verificaredatavineri3);
                    request.setAttribute("verificaredatavineri4", verificaredatavineri4);
                    request.setAttribute("countvineri", countvineri);
                    request.setAttribute("countwfhluni", countwfhluni);
                    request.setAttribute("countwfhluni2", countwfhluni2);
                    request.setAttribute("countwfhluni3", countwfhluni3);
                    request.setAttribute("countwfhluni4", countwfhluni4);
                    request.setAttribute("countwfhmarti", countwfhmarti);
                    request.setAttribute("countwfhmarti2", countwfhmarti2);
                    request.setAttribute("countwfhmarti3", countwfhmarti3);
                    request.setAttribute("countwfhmarti4", countwfhmarti4);
                    request.setAttribute("countwfhmiercuri", countwfhmiercuri);
                    request.setAttribute("countwfhmiercuri2", countwfhmiercuri2);
                    request.setAttribute("countwfhmiercuri3", countwfhmiercuri3);
                    request.setAttribute("countwfhmiercuri4", countwfhmiercuri4);
                    request.setAttribute("countwfhjoi", countwfhjoi);
                    request.setAttribute("countwfhjoi2", countwfhjoi2);
                    request.setAttribute("countwfhjoi3", countwfhjoi3);
                    request.setAttribute("countwfhjoi4", countwfhjoi4);
                    request.setAttribute("countwfhvineri", countwfhvineri);
                    request.setAttribute("countwfhvineri2", countwfhvineri2);
                    request.setAttribute("countwfhvineri3", countwfhvineri3);
                    request.setAttribute("countwfhvineri4", countwfhvineri4);
                    request.setAttribute("errorString", errorString);
                    request.setAttribute("verifluni", verifluni);
                    request.setAttribute("verifmarti", verifmarti);
                    request.setAttribute("verifmiercuri", verifmiercuri);
                    request.setAttribute("verifjoi", verifjoi);
                    request.setAttribute("verifvineri", verifvineri);
                    request.setAttribute("verifluni2", verifluni2);
                    request.setAttribute("verifmarti2", verifmarti2);
                    request.setAttribute("verifmiercuri2", verifmiercuri2);
                    request.setAttribute("verifjoi2", verifjoi2);
                    request.setAttribute("verifvineri2", verifvineri2);
                    request.setAttribute("verifluni3", verifluni3);
                    request.setAttribute("verifmarti3", verifmarti3);
                    request.setAttribute("verifmiercuri3", verifmiercuri3);
                    request.setAttribute("verifjoi3", verifjoi3);
                    request.setAttribute("verifvineri3", verifvineri3);
                    request.setAttribute("verifluni4", verifluni4);
                    request.setAttribute("verifmarti4", verifmarti4);
                    request.setAttribute("verifmiercuri4", verifmiercuri4);
                    request.setAttribute("verifjoi4", verifjoi4);
                    request.setAttribute("verifvineri4", verifvineri4);
                    request.setAttribute("list8", list8);
                    request.setAttribute("unitlist", unitlist);
                    request.setAttribute("unitate", unitate);
                    request.setAttribute("wfhzi", wfhzi);
                    request.setAttribute("wfhzimarti", wfhzimarti);
                    request.setAttribute("wfhzimiercuri", wfhzimiercuri);
                    request.setAttribute("wfhzijoi", wfhzijoi);
                    request.setAttribute("wfhzivineri", wfhzivineri);
                    request.setAttribute("wfhzi2", wfhzi2);
                    request.setAttribute("wfhzimarti2", wfhzimarti2);
                    request.setAttribute("wfhzimiercuri2", wfhzimiercuri2);
                    request.setAttribute("wfhzijoi2", wfhzijoi2);
                    request.setAttribute("wfhzivineri2", wfhzivineri2);
                    request.setAttribute("wfhzi3", wfhzi3);
                    request.setAttribute("wfhzimarti3", wfhzimarti3);
                    request.setAttribute("wfhzimiercuri3", wfhzimiercuri3);
                    request.setAttribute("wfhzijoi3", wfhzijoi3);
                    request.setAttribute("wfhzivineri3", wfhzivineri3);
                    request.setAttribute("wfhzi4", wfhzi4);
                    request.setAttribute("wfhzimarti4", wfhzimarti4);
                    request.setAttribute("wfhzimiercuri4", wfhzimiercuri4);
                    request.setAttribute("wfhzijoi4", wfhzijoi4);
                    request.setAttribute("wfhzivineri4", wfhzivineri4);
                    request.setAttribute("Luni", sqlLuni);
                    request.setAttribute("Marti", sqlMarti);
                    request.setAttribute("Miercuri", sqlMiercuri);
                    request.setAttribute("Joi", sqlJoi);
                    request.setAttribute("Vineri", sqlVineri);
                    request.setAttribute("Luni2", sqlLuni2);
                    request.setAttribute("Marti2", sqlMarti2);
                    request.setAttribute("Miercuri2", sqlMiercuri2);
                    request.setAttribute("Joi2", sqlJoi2);
                    request.setAttribute("Vineri2", sqlVineri2);
                    request.setAttribute("Luni3", sqlLuni3);
                    request.setAttribute("Marti3", sqlMarti3);
                    request.setAttribute("Miercuri3", sqlMiercuri3);
                    request.setAttribute("Joi3", sqlJoi3);
                    request.setAttribute("Vineri3", sqlVineri3);
                    request.setAttribute("Luni4", sqlLuni4);
                    request.setAttribute("Marti4", sqlMarti4);
                    request.setAttribute("Miercuri4", sqlMiercuri4);
                    request.setAttribute("Joi4", sqlJoi4);
                    request.setAttribute("Vineri4", sqlVineri4);
                    request.setAttribute("nr", nr);
                    request.setAttribute("nr_sapt2", nr_sapt2);
                    request.setAttribute("nr_sapt3", nr_sapt3);
                    request.setAttribute("nr_sapt4", nr_sapt4);
                    request.setAttribute("nr_luni", nr_luni);
                    request.setAttribute("nr_marti", nr_marti);
                    request.setAttribute("nr_miercuri", nr_miercuri);
                    request.setAttribute("nr_joi", nr_joi);
                    request.setAttribute("nr_vineri", nr_vineri);
                    request.setAttribute("nr_luni2", nr_luni2);
                    request.setAttribute("nr_marti2", nr_marti2);
                    request.setAttribute("nr_miercuri2", nr_miercuri2);
                    request.setAttribute("nr_joi2", nr_joi2);
                    request.setAttribute("nr_vineri2", nr_vineri2);
                    request.setAttribute("nr_luni3", nr_luni3);
                    request.setAttribute("nr_marti3", nr_marti3);
                    request.setAttribute("nr_miercuri3", nr_miercuri3);
                    request.setAttribute("nr_joi3", nr_joi3);
                    request.setAttribute("nr_vineri3", nr_vineri3);
                    request.setAttribute("nr_luni4", nr_luni4);
                    request.setAttribute("nr_marti4", nr_marti4);
                    request.setAttribute("nr_miercuri4", nr_miercuri4);
                    request.setAttribute("nr_joi4", nr_joi4);
                    request.setAttribute("nr_vineri4", nr_vineri4);
                    request.setAttribute("wfhluni", wfhluni);
                    request.setAttribute("wfhluni2", wfhluni2);
                    request.setAttribute("wfhluni3", wfhluni3);
                    request.setAttribute("wfhluni4", wfhluni4);
                    request.setAttribute("wfhmarti", wfhmarti);
                    request.setAttribute("wfhmarti2", wfhmarti2);
                    request.setAttribute("wfhmarti3", wfhmarti3);
                    request.setAttribute("wfhmarti4", wfhmarti4);
                    request.setAttribute("wfhmiercuri", wfhmiercuri);
                    request.setAttribute("wfhmiercuri2", wfhmiercuri2);
                    request.setAttribute("wfhmiercuri3", wfhmiercuri3);
                    request.setAttribute("wfhmiercuri4", wfhmiercuri4);
                    request.setAttribute("wfhjoi", wfhjoi);
                    request.setAttribute("wfhjoi2", wfhjoi2);
                    request.setAttribute("wfhjoi3", wfhjoi3);
                    request.setAttribute("wfhjoi4", wfhjoi4);
                    request.setAttribute("wfhvineri", wfhvineri);
                    request.setAttribute("wfhvineri2", wfhvineri2);
                    request.setAttribute("wfhvineri3", wfhvineri3);
                    request.setAttribute("wfhvineri4", wfhvineri4);
                    request.setAttribute("poza", poza);
                    request.setAttribute("it2pk_fk", it2pk_fk);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/editInregistrari.jsp");
                    dispatcher.forward(request, response);
                }

                conn.close();
            } catch (Exception var234) {
                response.sendRedirect("/picturefail.jsp");
                throw new RuntimeException(var234);
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}

