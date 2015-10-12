
package com.br.lp3.DAO;

import com.br.lp3.entities.Historia;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;

/**
 *
 * @author William Cisang (31441564)
 * @author Raquel Gallo (31458521)
 */

@Stateless
public class DAOHistoria implements DAOHistoriaLocal {

    @Override
    public void inserir(Historia h) {
        
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Historia");
            servico.insert(h);
            
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHistoria.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Historia> readList() {
        List<Historia> lista = null;
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Historia");
            lista = servico.readList();
            
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHistoria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    @Override
    public void update(Historia historia) {
         try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Historia");
            servico.update(historia);
            
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHistoria.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(int id) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Historia");
            servico.delete(id);
            
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHistoria.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    

    
}
