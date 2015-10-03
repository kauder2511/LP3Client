/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.DAO;

import com.br.lp3.DAO.DAOManagerLocal;
import com.br.lp3.DAO.GenericDAO;
import com.br.lp3.entities.Usuario;
import java.rmi.AccessException;
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
 * @author Raquel
 */
@Stateless
public class DAOUser implements DAOManagerLocal {

    @Override
    public boolean verificaLogin(Usuario u ) {
        
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Usuario");
            List<Usuario> lista = servico.readList();
            for (Usuario user : lista) {
                if(user.getLogin().equalsIgnoreCase(u.getLogin()) && user.getSenha().equalsIgnoreCase(u.getSenha())){
                    return true;
                }
            }
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;
        
    }
    
    

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public void inserir(Usuario u) {
        
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Usuario");
            servico.insert(u);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Usuario> readList() {
        List<Usuario> lista = null;
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Usuario");
            lista = servico.readList();
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    @Override
    public void update(Usuario u) {
        
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Usuario");
            
            servico.update(u);
        } catch (RemoteException | NotBoundException  ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

    @Override
    public void delete(int id) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Usuario");
            servico.delete(id);
        } catch (RemoteException | NotBoundException  ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    
    
    
}
