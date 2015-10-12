
package com.br.lp3.DAO;

import com.br.lp3.entities.Vestimenta;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;

/**
 *
 * @author Raquel Gallo (31458521)
 * @author William Cisang (31441564)
 */

@Stateless
public class DAOVestimenta implements DAOVestimentaLocal {

    @Override
    public void inserir(Vestimenta vestimenta) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Vestimenta");
            servico.insert(vestimenta);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOVestimenta.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Vestimenta> read() {
        List<Vestimenta> lista = new ArrayList<>();
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Vestimenta");
            lista = servico.readList();
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOVestimenta.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }

    @Override
    public void update(Vestimenta vestimenta) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Vestimenta");
            servico.update(vestimenta);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOVestimenta.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(int id_vestimenta) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Vestimenta");
            servico.delete(id_vestimenta);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOVestimenta.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
}
