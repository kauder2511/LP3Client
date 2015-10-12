
package com.br.lp3.DAO;

import com.br.lp3.entities.Histsugestao;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author William Cisang (31441564)
 * @author Raquel Gallo (31458521)
 */

@Local
public interface DAOHistSugestaoLocal {

    void inserir(Histsugestao histSugestao);

    List<Histsugestao> read();

    void update(Histsugestao histSugestao);

    void delete(int id_histSugestao);
    
}
