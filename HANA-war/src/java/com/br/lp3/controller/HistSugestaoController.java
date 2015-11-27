package com.br.lp3.controller;

import com.br.lp3.DAO.DAOHistSugestaoLocal;
import com.br.lp3.DAO.DAOHistoriaLocal;
import com.br.lp3.entities.Heroi;
import com.br.lp3.entities.Historia;
import com.br.lp3.entities.Histsugestao;
import com.br.lp3.entities.Usuario;
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
 * @author racme
 */
public class HistSugestaoController extends HttpServlet {

    @EJB
    private DAOHistoriaLocal dAOHistoria;
    @EJB
    private DAOHistSugestaoLocal dAOHistSugestao;

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

            String tipoop = request.getAttribute("TipoOPSugs").toString();

            if (tipoop.equals("insertSug")){
                Heroi heroi = (Heroi) request.getSession().getAttribute("heroiHistSelecionado");
                Usuario userDaSugestao = (Usuario) request.getSession().getAttribute("Usuario");
                String introducao = request.getAttribute("editIntro").toString();
                String meio = request.getAttribute("editMeio").toString();
                String conclusao = request.getAttribute("editFim").toString();

                for (Historia his : dAOHistoria.readList()) {
                    if (Objects.equals(his.getIdheroi().getIdHeroi(), heroi.getIdHeroi())) {
                        if (his.getRoteiro() == 1) {
                            if (!his.getHistoria().equals(introducao)) {
                                Histsugestao sugIntro = new Histsugestao();
                                sugIntro.setHistoria(introducao);
                                sugIntro.setIdheroi(heroi);
                                sugIntro.setIdusuario(userDaSugestao);
                                sugIntro.setRoteiro(1);
                                dAOHistSugestao.inserir(sugIntro);
                            }
                        } else if (his.getRoteiro() == 2) {
                            if (!his.getHistoria().equals(meio)) {
                                Histsugestao sugMeio = new Histsugestao();
                                sugMeio.setHistoria(meio);
                                sugMeio.setIdheroi(heroi);
                                sugMeio.setIdusuario(userDaSugestao);
                                sugMeio.setRoteiro(2);
                                dAOHistSugestao.inserir(sugMeio);
                            }
                        } else if (his.getRoteiro() == 3) {
                            if (!his.getHistoria().equals(conclusao)) {
                                Histsugestao sugConclusao = new Histsugestao();
                                sugConclusao.setHistoria(conclusao);
                                sugConclusao.setIdheroi(heroi);
                                sugConclusao.setIdusuario(userDaSugestao);
                                sugConclusao.setRoteiro(3);
                                dAOHistSugestao.inserir(sugConclusao);
                            }
                        }
                    }
                }
                response.sendRedirect("TelaSugestao.jsp");
            }
        }
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
