
package model.bean;

/*
* Caian Rais - 20733152
* Diogo Casagrande - 20718678
* Julia Gil - 20511823
* Leticia Serpa - 20678178
*/

public class DataSource {
    private int id;
    private String descricao;
    
    public DataSource(){}
    
    public DataSource(String descricao){
        this.id = id;
        this.descricao = descricao;
    }
    
    public int getId(){
        return id;
    }
    
    public void setId(int id){
        this.id = id;
    }
    
    public String getDescricao(){
        return descricao;
    }
    
    public void setDescricao(String descricao){
        this.descricao = descricao;
    }
    
}
