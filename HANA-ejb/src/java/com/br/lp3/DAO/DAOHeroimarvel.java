/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.DAO;

import com.br.lp3.entities.Heroimarvel;
import java.rmi.AccessException;
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
 * @author Raquel
 */
@Stateless
public class DAOHeroimarvel implements DAOHeroimarvelLocal {

    @Override
    public void inserir(Heroimarvel heroiMarvel) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Heroimarvel");
            servico.insert(heroiMarvel);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHeroimarvel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Heroimarvel> read() {
        List<Heroimarvel> lista = new ArrayList<>();
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Heroimarvel");
            lista = servico.readList();
                    
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHeroimarvel.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }

    @Override
    public void update(Heroimarvel heroiMarvel) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Heroimarvel");
            servico.update(heroiMarvel);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHeroimarvel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(int id_heroimar) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Heroimarvel");
            servico.delete(id_heroimar);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHeroimarvel.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    

    
}
