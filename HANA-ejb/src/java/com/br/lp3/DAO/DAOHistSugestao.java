/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.DAO;

import com.br.lp3.entities.Histsugestao;
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
 * @author william
 */
@Stateless
public class DAOHistSugestao implements DAOHistSugestaoLocal {

    @Override
    public void inserir(Histsugestao histSugestao) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Histsugestao");
            servico.insert(histSugestao);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHistSugestao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    @Override
    public List<Histsugestao> read() {
        List<Histsugestao> lista = new ArrayList<>();
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Histsugestao");
            lista = servico.readList();
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHistSugestao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    @Override
    public void update(Histsugestao histSugestao) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Histsugestao");
            servico.update(histSugestao);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHistSugestao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(int id_histSugestao) {
        try {
            Registry registro = LocateRegistry.getRegistry("localhost",1099);
            GenericDAO servico = (GenericDAO) registro.lookup("Histsugestao");
            servico.delete(id_histSugestao);
        } catch (RemoteException | NotBoundException ex) {
            Logger.getLogger(DAOHistSugestao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
}
