package com.br.lp3.DAO;

import com.br.lp3.entities.Heroi;
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
public class DAOHeroi implements DAOHeroiLocal {

    @Override
    public void inserir(Heroi heroi) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Heroi");

            servico.insert(heroi);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHeroi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Heroi> read() {

        List<Heroi> lista = new ArrayList<>();
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Heroi");
            lista = servico.readList();
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHeroi.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    @Override
    public void update(Heroi heroi) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Heroi");

            servico.update(heroi);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHeroi.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public void delete(int id_heroi) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Heroi");
            servico.delete(id_heroi);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHeroi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
