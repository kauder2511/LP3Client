
package com.br.lp3.DAO;

import com.br.lp3.entities.Historia;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author William Cisang (31441564)
 * @author Raquel Gallo (31458521)
 */

@Local
public interface DAOHistoriaLocal {

    void inserir(Historia h);

    List<Historia> readList();

    void update(Historia historia);

    void delete(int id);
    
}
