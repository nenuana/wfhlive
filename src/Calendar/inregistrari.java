package Calendar;

import java.util.Date;

public class inregistrari {
    private int idinregistrarewfh;
    private Date data;
    private String email;
    private int id_fk;

    public inregistrari() {
    }

    public inregistrari(Date data, String email, int id_fk) {
        this.data = data;
        this.email = email;
        this.id_fk = id_fk;
    }

    public int getId_fk() {
        return this.id_fk;
    }

    public void setId_fk(int id_fk) {
        this.id_fk = id_fk;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getData() {
        return this.data;
    }

    public int getIdinregistrarewfh() {
        return this.idinregistrarewfh;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public void setIdinregistrarewfh(int idinregistrarewfh) {
        this.idinregistrarewfh = idinregistrarewfh;
    }
}
