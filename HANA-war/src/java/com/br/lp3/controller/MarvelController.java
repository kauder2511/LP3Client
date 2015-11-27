package com.br.lp3.controller;

import com.br.lp3.DAO.DAOHeroiLocal;
import com.br.lp3.DAO.DAOHeroimarvelLocal;
import com.br.lp3.entities.Heroi;
import com.br.lp3.entities.Heroimarvel;
import com.br.lp3.entities.Usuario;
import com.br.lp3.sessionbeans.MarvelManagerLocal;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author William Cisang (31441564)
 * @author Raquel Gallo (31458521)
 */
public class MarvelController extends HttpServlet {

    @EJB
    private MarvelManagerLocal marvelManager;

    @EJB
    private DAOHeroiLocal dAOHeroi;
    @EJB
    private DAOHeroimarvelLocal dAOHeroimarvel;
    private RequestDispatcher rd;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        /* TODO output your page here. You may use following sample code. */
        String tipoop = request.getAttribute("TipoOPMarvel").toString();

        if (tipoop.equals("insert")) {
            String nomemarvel = request.getAttribute("nome").toString();
            Usuario u = (Usuario) request.getSession().getAttribute("Usuario");
            Heroimarvel marvel = new Heroimarvel();
        //Conexão webService para pegar historia

            List<Heroimarvel> list = marvelManager.searchCharacterByName(nomemarvel);
            if (list.isEmpty()) {
                request.getSession().setAttribute("heroivalido", false);
                rd = request.getRequestDispatcher("/TelaEscolhaMarvel.jsp");
                rd.forward(request, response);
            }
            marvel.setHistoria(list.get(0).getHistoria());
            marvel.setNomeHeroimar(list.get(0).getNomeHeroimar());
            marvel.setIdUsermarvel(u);
            marvel.setImage(list.get(0).getImage());
            dAOHeroimarvel.inserir(marvel);
            request.getSession().setAttribute("Heroimarvel", marvel);
            request.getSession().setAttribute("Listaheroi", buscalistaheroi());
            rd = request.getRequestDispatcher("/TelaInicial.jsp");
            rd.forward(request, response);

        }else if(tipoop.equals("histInsert")){
            String novaHist = request.getAttribute("novaHistoria").toString();
            Heroimarvel heroi = (Heroimarvel) request.getSession().getAttribute("Heroimarvel");
            heroi.setHistoria(novaHist);
            dAOHeroimarvel.update(heroi);
            request.getSession().setAttribute("Heroimarvel",heroi);
            response.sendRedirect("TelaReviews.jsp");
            
        }

    }

    private List<Heroi> buscalistaheroi() {
        return dAOHeroi.read();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
