
package com.br.lp3.DAO;

import com.br.lp3.entities.Heroi;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Raquel Gallo (31458521)
 * @author William Cisang (31441564)
 */
@Local
public interface DAOHeroiLocal {

    void inserir(Heroi heroi);
    
    List<Heroi> read();

    void update(Heroi heroi);

    void delete(int id_heroi);

    
    
}
