/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.sessionbeans;

import com.br.lp3.DAO.GenericDAO;
import com.br.lp3.entities.Usuario;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
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
    public boolean verificaLogin(String nome,String senha ) {
        
        try {
            Registry registro = LocateRegistry.getRegistry("localhost", 1099);
            GenericDAO<Usuario> servico = (GenericDAO<Usuario>) registro.lookup("Usuario");
            Usuario u =new Usuario();
            u.setLogin(nome);
            u.setSenha(senha);
            u = servico.read(u);
            if(u!=null){
                return true;
            }
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;
        
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
