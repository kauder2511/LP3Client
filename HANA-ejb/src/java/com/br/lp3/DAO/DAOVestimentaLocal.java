
package com.br.lp3.DAO;

import com.br.lp3.entities.Vestimenta;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Raquel Gallo (31458521)
 * @author William Cisang (31441564)
 */

@Local
public interface DAOVestimentaLocal {

    void inserir(Vestimenta vestimenta);

    List<Vestimenta> read();

    void update(Vestimenta vestimenta);

    void delete(int id_vestimenta);
    
    
}
