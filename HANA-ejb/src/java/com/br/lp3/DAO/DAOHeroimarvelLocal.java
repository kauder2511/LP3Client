
package com.br.lp3.DAO;

import com.br.lp3.entities.Heroimarvel;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Raquel Gallo (31458521)
 * @author William Cisang (31441564)
 */

@Local
public interface DAOHeroimarvelLocal {

    void inserir(Heroimarvel heroiMarvel);

    List<Heroimarvel> read();

    void update(Heroimarvel heroiMarvel);

    void delete(int id_heroimar);
    
}
