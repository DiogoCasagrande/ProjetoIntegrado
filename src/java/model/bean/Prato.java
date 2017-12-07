
package model.bean;

public class Prato {
    private int id;
    private int codigo;
    private String prato;
    
    public Prato(){}
    
    public Prato(int codigo, String prato){
        this.codigo = codigo;
        this.prato = prato;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getPrato() {
        return prato;
    }

    public void setPrato(String prato) {
        this.prato = prato;
    }
    
    
}
