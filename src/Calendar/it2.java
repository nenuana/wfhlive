package Calendar;

public class it2 {
    private String code;
    private String email;
    private String last_name;
    private String first_name;
    private String nume_si_prenume;
    private String position;
    private String unit;
    private String division;
    private String direction;
    private String department;
    private String collective;
    private String superior_full_name;
    private String superior_code;
    private String superior_position;
    private String Poza;
    private String email_np1;
    private int maxwfh_unit;
    private int it2pk;

    public it2() {
    }

    public it2(String code, String email, String last_name, String first_name, String nume_si_prenume, String position, String department, String unit, String division, String direction, String collective, String superior_full_name, String superior_code, String superior_position, String Poza, String email_np1, Integer it2pk, Integer maxwfh_unit) {
        this.code = code;
        this.email = email;
        this.last_name = last_name;
        this.first_name = first_name;
        this.nume_si_prenume = nume_si_prenume;
        this.position = position;
        this.unit = unit;
        this.division = division;
        this.direction = direction;
        this.department = department;
        this.collective = collective;
        this.superior_full_name = superior_full_name;
        this.superior_code = superior_code;
        this.superior_position = superior_position;
        this.Poza = Poza;
        this.email_np1 = email_np1;
        this.it2pk = it2pk.intValue();
        this.maxwfh_unit = maxwfh_unit.intValue();
    }

    public int getMaxwfh_unit() {
        return this.maxwfh_unit;
    }

    public void setMaxwfh_unit(int maxwfh_unit) {
        this.maxwfh_unit = maxwfh_unit;
    }

    public int getIt2pk() {
        return this.it2pk;
    }

    public void setIt2pk(int it2pk) {
        this.it2pk = it2pk;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setCollective(String collective) {
        this.collective = collective;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public void setDivision(String division) {
        this.division = division;
    }

    public void setEmail_np1(String email_np1) {
        this.email_np1 = email_np1;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public void setNume_si_prenume(String nume_si_prenume) {
        this.nume_si_prenume = nume_si_prenume;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public void setPoza(String poza) {
        this.Poza = poza;
    }

    public void setSuperior_code(String superior_code) {
        this.superior_code = superior_code;
    }

    public void setSuperior_full_name(String superior_full_name) {
        this.superior_full_name = superior_full_name;
    }

    public void setSuperior_position(String superior_position) {
        this.superior_position = superior_position;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getEmail() {
        return this.email;
    }

    public String getCode() {
        return this.code;
    }

    public String getCollective() {
        return this.collective;
    }

    public String getDepartment() {
        return this.department;
    }

    public String getDirection() {
        return this.direction;
    }

    public String getDivision() {
        return this.division;
    }

    public String getFirst_name() {
        return this.first_name;
    }

    public String getEmail_np1() {
        return this.email_np1;
    }

    public String getLast_name() {
        return this.last_name;
    }

    public String getNume_si_prenume() {
        return this.nume_si_prenume;
    }

    public String getPosition() {
        return this.position;
    }

    public String getPoza() {
        return this.Poza;
    }

    public String getSuperior_code() {
        return this.superior_code;
    }

    public String getSuperior_full_name() {
        return this.superior_full_name;
    }

    public String getUnit() {
        return this.unit;
    }

    public String getSuperior_position() {
        return this.superior_position;
    }
}

