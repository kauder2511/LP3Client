/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.DAO;

import com.br.lp3.entities.Usuario;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Raquel
 */
@Local
public interface DAOManagerLocal {
    
    public boolean verificaLogin(Usuario u);

    void inserir(Usuario u);
    
    public List<Usuario> readList() ;

    void update(Usuario u);

    void delete(int id);
}