/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.DAO;

import com.br.lp3.entities.Heroi;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Raquel
 */
@Local
public interface DAOHeroiLocal {

    void inserir(Heroi heroi);
    
    List<Heroi> read();

    void update(Heroi heroi);

    void delete(int id_heroi);

    
    
}
