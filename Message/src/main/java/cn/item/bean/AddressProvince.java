package cn.item.bean;

public class AddressProvince {
    private Integer id;

    private String codeProvince;

    private String nameProvince;

    private String chinaname;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCodeProvince() {
        return codeProvince;
    }

    public void setCodeProvince(String codeProvince) {
        this.codeProvince = codeProvince == null ? null : codeProvince.trim();
    }

    public String getNameProvince() {
        return nameProvince;
    }

    public void setNameProvince(String nameProvince) {
        this.nameProvince = nameProvince == null ? null : nameProvince.trim();
    }

    public String getChinaname() {
        return chinaname;
    }

    public void setChinaname(String chinaname) {
        this.chinaname = chinaname == null ? null : chinaname.trim();
    }
}