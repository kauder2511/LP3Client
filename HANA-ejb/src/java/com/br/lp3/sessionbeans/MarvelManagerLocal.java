/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.sessionbeans;

import com.br.lp3.entities.Heroimarvel;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author willi
 */
@Local
public interface MarvelManagerLocal {
    
    public List<Heroimarvel> searchCharacterByName(String name);
    
}
