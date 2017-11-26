
package model.bean;


public class Produto {

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public DataSource getCategorias() {
        return categorias;
    }

    public void setCategorias(DataSource categorias) {
        this.categorias = categorias;
    }
    
    private int id;
    private String descricao;
    private int qtd;
    private double valor;
    private DataSource categorias;
    
    public Produto(){}
    
    public Produto(String descricao, int qtd, double valor, DataSource categoria){
        this.descricao = descricao;
        this.qtd = qtd;
        this.valor = valor;
        this.categorias = categoria;
    }
}
