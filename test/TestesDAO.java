
import java.util.List;
import model.bean.Produto;
import model.dao.ProdutoDAO;


public class TestesDAO {
    public static void main(String[] args) {

        Produto p = new Produto();
        ProdutoDAO dao = new ProdutoDAO();
   
        p.setId(03);
        p.setNome("asd");
        p.setDescricao("wsad");
        p.setValor(20.3);
        p.setQuantidade(123);
        
        List<Produto> saida = dao.read();
        
        for (Produto obj : saida) {
            System.out.println(obj.getId());
            System.out.println(obj.getDescricao());
            System.out.println(obj.getNome());
            System.out.println(obj.getQuantidade());
            System.out.println(obj.getValor());
        }
        
        
    }
}
