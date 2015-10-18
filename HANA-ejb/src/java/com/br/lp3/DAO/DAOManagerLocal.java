package com.br.lp3.DAO;

import com.br.lp3.entities.Usuario;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Raquel Gallo (31458521)
 * @author William Cisang (31441564)
 */
@Local
public interface DAOManagerLocal {

    public boolean verificaLogin(Usuario u);

    void inserir(Usuario u);

    public List<Usuario> readList();

    void update(Usuario u);

    void delete(int id);
}
