package com.br.lp3.sessionbeans;

import com.br.lp3.DAO.DAOHistoriaLocal;
import com.br.lp3.JsonEntities.HeroiJson;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

/**
 *
 * @author willi
 */
@Stateless
@LocalBean
@Path("heroi")
public class HeroiBean {

    @EJB
    private DAOHistoriaLocal dAOHistoria;
    @EJB
    private HeroiSingleton heroiSingleton;

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    @GET
    //entre chaves( { } ) significa que é um parametro
    @Path("/lista")
    @Produces("application/json")
    public List<HeroiJson> getListHeroi() {

        return heroiSingleton.getListHeroi();
    }

    @GET
    //entre chaves( { } ) significa que é um parametro
    @Path("/{id_heroi}")
    @Produces("application/json")
    public HeroiJson getHeroiByID(@PathParam("id_heroi") int id) {
        return heroiSingleton.getHeroibyId(id);
    }
    

}
