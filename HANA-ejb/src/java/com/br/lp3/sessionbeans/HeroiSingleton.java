package com.br.lp3.sessionbeans;

import com.br.lp3.DAO.DAOHeroiLocal;
import com.br.lp3.DAO.DAOHistoriaLocal;
import com.br.lp3.JsonEntities.HeroiJson;
import com.br.lp3.entities.Heroi;
import com.br.lp3.entities.Historia;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.ejb.LocalBean;
import javax.ejb.Singleton;
import javax.ejb.Startup;

/**
 *
 * @author willi
 */
@Singleton
@LocalBean
@Startup
public class HeroiSingleton {

    @EJB
    private DAOHistoriaLocal dAOHistoria;
    @EJB
    private DAOHeroiLocal dAOHeroi;

    List<HeroiJson> listaHeroi;

    @PostConstruct
    public void initialize() {
        
        listaHeroi = new ArrayList<>();
        preencher();
    }

    public List<HeroiJson> getListHeroi() {
        
        return listaHeroi;
    }

    public HeroiJson getHeroibyId(int id) {
       
        for (HeroiJson h : listaHeroi) {
            if(h.getIdHeroi() == id){
                return h;
            }
        }
        return null;
    }
    

    public void preencher(){
        
        for (Heroi h : dAOHeroi.read()) {
            HeroiJson heroi = new HeroiJson();
            heroi.setIdHeroi(h.getIdHeroi());
            heroi.setNomeHeroi(h.getNomeHeroi());
            heroi.setNomeCriador(h.getIdUser().getNomeUsuario());
            heroi.setCapacete(h.getIdCapacete().getImagem());
            heroi.setCorpo(h.getIdCorpo().getImagem());
            for (Historia hist : dAOHistoria.readList()) {
                if (Objects.equals(hist.getIdheroi().getIdHeroi(), h.getIdHeroi())) {
                    if (hist.getRoteiro() == 1) {
                        heroi.setIntroducaoHistoria(hist.getHistoria());
                    } else if (hist.getRoteiro() == 2) {
                        heroi.setMeioHistoria(hist.getHistoria());
                    } else {
                        heroi.setFinalHistoria(hist.getHistoria());
                    }
                }
            }
            listaHeroi.add(heroi);

        }
    }
}
