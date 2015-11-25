package com.br.lp3.controller;

import com.br.lp3.DAO.DAOHistoriaLocal;
import com.br.lp3.entities.Heroi;
import com.br.lp3.entities.Historia;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Raquel Gallo (31458521)
 * @author William Cisang (31441564)
 */
public class HistoriaController extends HttpServlet {

    @EJB
    private DAOHistoriaLocal dAOHistoria;

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            Heroi heroi = (Heroi) request.getSession().getAttribute("Heroi");
            String intro = request.getAttribute("editarIntro").toString();
            String meio = request.getAttribute("editarMeio").toString();
            String fim = request.getAttribute("editarFim").toString();
            request.getSession().setAttribute("Listahistoria", atualizaHistoria(heroi, intro, meio, fim));
            response.sendRedirect("TelaMeuHeroi.jsp");

        }
    }

    private List<Historia> atualizaHistoria(Heroi heroi, String intro, String meio, String fim) {
        List<Historia> lista = dAOHistoria.readList();
        List<Historia> retorno = new ArrayList<>();
        for (Historia his : lista) {
            if (Objects.equals(heroi.getIdHeroi(), his.getIdheroi().getIdHeroi())) {
                if (his.getRoteiro() == 1) {
                    his.setHistoria(intro);
                    dAOHistoria.update(his);
                    retorno.add(his);
                } else if (his.getRoteiro() == 2) {
                    his.setHistoria(meio);
                    dAOHistoria.update(his);
                    retorno.add(his);
                } else {
                    his.setHistoria(fim);
                    dAOHistoria.update(his);
                    retorno.add(his);
                }
            }
        }
        return retorno;

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
