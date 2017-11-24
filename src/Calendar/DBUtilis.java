
package Calendar;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBUtilis {
    public DBUtilis() {
    }

    public static it2 finddepandunit(Connection conn, String email) throws SQLException {
        String sql = "Select unit,email,it2pk,maxwfh_unit from it2 where email = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, email);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            it2 it2 = new it2();
            String unit = rs.getString("unit");
            Integer it2pk = rs.getInt("it2pk");
            Integer maxwfh_unit = rs.getInt("maxwfh_unit");
            it2.setUnit(unit);
            it2.setIt2pk(it2pk.intValue());
            it2.setMaxwfh_unit(maxwfh_unit.intValue());
            return it2;
        } else {
            return null;
        }
    }

    public static Integer countsaptamana(Connection conn, String email, Date datai, Date datas) throws SQLException {
        String sql = "Select count(data) AS total from inregistrarewfh where email = ? and data  BETWEEN  ? and ? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, email);
        pstm.setDate(2, datai);
        pstm.setDate(3, datas);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            Integer nr = rs.getInt("total");
            return nr;
        } else {
            return null;
        }
    }

    public static Integer countverifdata(Connection conn, String email, Date datai) throws SQLException {
        String sql = "Select count(data) AS total from inregistrarewfh where email = ? and data = ? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, email);
        pstm.setDate(2, datai);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            Integer nrverif = rs.getInt("total");
            return nrverif;
        } else {
            return null;
        }
    }

    public static List<inregistrari> wfhzi(Connection conn, Date datai) throws SQLException {
        String sql = "SELECT email from inregistrarewfh where data = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setDate(1, datai);
        ResultSet rs = pstm.executeQuery();
        ArrayList list = new ArrayList();

        while(rs.next()) {
            String email = rs.getString("email");
            inregistrari inregistrari = new inregistrari();
            inregistrari.setEmail(email);
            list.add(inregistrari);
        }

        return list;
    }

    public static Integer countluni(Connection conn, Date datai, String unit) throws SQLException {
        String sql = "SELECT count(data) as total FROM inregistrarewfh a join it2 b on a.id_fk = b.it2pk where data = ? and unit = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setDate(1, datai);
        pstm.setString(2, unit);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            Integer nr_luni = rs.getInt("total");
            return nr_luni;
        } else {
            return null;
        }
    }

    public static Integer countwfh(Connection conn, Date datai) throws SQLException {
        String sql = "SELECT count(data) as total FROM inregistrarewfh a join it2 b on a.id_fk = b.it2pk where data = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setDate(1, datai);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            Integer countwfh = rs.getInt("total");
            return countwfh;
        } else {
            return null;
        }
    }

    public static Integer countzivineri(Connection conn, Date datai, Date datav, Date datat, Date datap, String email) throws SQLException {
        String sql = "SELECT count(data) as total FROM inregistrarewfh a join it2 b on a.id_fk = b.it2pk where (data = ? || data=? || data =? || data=? ) and a.email =?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setDate(1, datai);
        pstm.setDate(2, datav);
        pstm.setDate(3, datat);
        pstm.setDate(4, datap);
        pstm.setString(5, email);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            Integer countvineri = rs.getInt("total");
            return countvineri;
        } else {
            return null;
        }
    }

    public static List<it2> wfhluni(Connection conn, Date datai) throws SQLException {
        String sql = "SELECT b.last_name,b.first_name,b.email,b.email_np1, b.department,b.unit  FROM inregistrarewfh a join it2 b on a.id_fk = b.it2pk where data = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setDate(1, datai);
        ResultSet rs = pstm.executeQuery();
        ArrayList list = new ArrayList();

        while(rs.next()) {
            String last_name = rs.getString("last_name");
            String first_name = rs.getString("first_name");
            String email = rs.getString("email");
            String email_np1 = rs.getString("email_np1");
            String department = rs.getString("department");
            String unit = rs.getString("unit");
            it2 it2 = new it2();
            it2.setLast_name(last_name);
            it2.setFirst_name(first_name);
            it2.setEmail(email);
            it2.setEmail_np1(email_np1);
            it2.setDepartment(department);
            it2.setUnit(unit);
            list.add(it2);
        }

        return list;
    }

    public static List<it2> querytotiUtilizatoriicufk(Connection conn, String unit) throws SQLException {
        String sql = "Select  a.unit, a.last_name, a.first_name, a.email,a.poza,a.maxwfh_unit from it2 a where unit =?  order by a.last_name";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, unit);
        ResultSet rs = pstm.executeQuery();
        ArrayList list = new ArrayList();

        while(rs.next()) {
            String last_name = rs.getString("last_name");
            String first_name = rs.getString("first_name");
            String email = rs.getString("email");
            String poza = rs.getString("poza");
            Integer maxwfh_unit = rs.getInt("maxwfh_unit");
            it2 it2 = new it2();
            it2.setLast_name(last_name);
            it2.setFirst_name(first_name);
            it2.setEmail(email);
            it2.setPoza(poza);
            it2.setMaxwfh_unit(maxwfh_unit.intValue());
            list.add(it2);
        }

        return list;
    }

    public static List<it2> queryemail(Connection conn, String email) throws SQLException {
        String sql = "Select a.last_name, a.first_name, a.email,a.poza,a.maxwfh_unit from it2 a where email =? order by a.last_name ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, email);
        ResultSet rs = pstm.executeQuery();
        ArrayList list = new ArrayList();

        while(rs.next()) {
            String last_name = rs.getString("last_name");
            String first_name = rs.getString("first_name");
            String poza = rs.getString("poza");
            Integer maxwfh_unit = rs.getInt("maxwfh_unit");
            it2 it2 = new it2();
            it2.setLast_name(last_name);
            it2.setFirst_name(first_name);
            it2.setPoza(poza);
            it2.setEmail(email);
            it2.setMaxwfh_unit(maxwfh_unit.intValue());
            list.add(it2);
        }

        return list;
    }

    public static List<it2> querysearch(Connection conn, String unit) throws SQLException {
        String sql = "Select  a.unit,a.department, a.last_name, a.first_name, a.email,a.poza,a.maxwfh_unit from it2 a  where  unit = ? ORDER by a.last_name";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, unit);
        ResultSet rs = pstm.executeQuery();
        ArrayList list = new ArrayList();

        while(rs.next()) {
            String last_name = rs.getString("last_name");
            String first_name = rs.getString("first_name");
            String email = rs.getString("email");
            String poza = rs.getString("poza");
            Integer maxwfh_unit = rs.getInt("maxwfh_unit");
            it2 it2 = new it2();
            it2.setLast_name(last_name);
            it2.setFirst_name(first_name);
            it2.setEmail(email);
            it2.setPoza(poza);
            it2.setMaxwfh_unit(maxwfh_unit.intValue());
            list.add(it2);
        }

        return list;
    }

    public static ArrayList comboDepatament(Connection conn) throws SQLException {
        String sql = "Select DISTINCT  department from it2 ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        ArrayList departmentlist = new ArrayList();

        while(rs.next()) {
            String department = rs.getString("department");
            it2 it2 = new it2();
            it2.setDepartment(department);
            departmentlist.add(it2);
        }

        return departmentlist;
    }

    public static ArrayList comboUnit(Connection conn) throws SQLException {
        String sql = "Select DISTINCT  unit from it2 ORDER by unit";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        ArrayList unitlist = new ArrayList();

        while(rs.next()) {
            String unit = rs.getString("unit");
            it2 it2 = new it2();
            it2.setUnit(unit);
            unitlist.add(it2);
        }

        return unitlist;
    }

    public static void insertInregistrare(Connection conn, inregistrari inregistrari) throws SQLException {
        String sql = "Insert into inregistrarewfh(data,email,id_fk) values(?,?,?)";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setDate(1, (Date)inregistrari.getData());
        pstm.setString(2, inregistrari.getEmail());
        pstm.setInt(3, inregistrari.getId_fk());
        pstm.executeUpdate();
    }

    public static void deleteInregistrare(Connection conn, Date data, String email) throws SQLException {
        String sql = "DELETE  from inregistrarewfh where data = ? and email = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setDate(1, data);
        pstm.setString(2, email);
        pstm.executeUpdate();
    }
}

