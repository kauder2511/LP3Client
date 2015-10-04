/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.DAO;

import com.br.lp3.entities.Histsugestao;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author william
 */
@Local
public interface DAOHistSugestaoLocal {

    void inserir(Histsugestao histSugestao);

    List<Histsugestao> read();

    void update(Histsugestao histSugestao);

    void delete(int id_histSugestao);
    
}
