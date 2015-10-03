/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.DAO;

import com.br.lp3.entities.Historia;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author william
 */
@Local
public interface DAOHistoriaLocal {

    void inserir(Historia h);

    List<Historia> readList();

    void update(Historia historia);
    
}
