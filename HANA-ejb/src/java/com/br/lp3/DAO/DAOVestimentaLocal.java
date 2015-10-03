/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.DAO;

import com.br.lp3.entities.Vestimenta;
import javax.ejb.Local;

/**
 *
 * @author Raquel
 */
@Local
public interface DAOVestimentaLocal {

    void inserir(Vestimenta vestimenta);

    List<Vestimenta> read();

    void update(Vestimenta vestimenta);

    void delete(Vestimenta vestimenta);
    
    
}
