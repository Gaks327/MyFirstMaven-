package cn.item.bean;

public class AddressTown {
    private Integer id;

    private String codeTown;

    private String nameTown;

    private String citycode;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCodeTown() {
        return codeTown;
    }

    public void setCodeTown(String codeTown) {
        this.codeTown = codeTown == null ? null : codeTown.trim();
    }

    public String getNameTown() {
        return nameTown;
    }

    public void setNameTown(String nameTown) {
        this.nameTown = nameTown == null ? null : nameTown.trim();
    }

    public String getCitycode() {
        return citycode;
    }

    public void setCitycode(String citycode) {
        this.citycode = citycode == null ? null : citycode.trim();
    }
}