/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.controller;

import com.br.lp3.DAO.DAOHeroiLocal;
import com.br.lp3.DAO.DAOHeroimarvelLocal;
import com.br.lp3.DAO.DAOHistoriaLocal;
import com.br.lp3.DAO.DAOManagerLocal;
import com.br.lp3.entities.Heroi;
import com.br.lp3.entities.Heroimarvel;
import com.br.lp3.entities.Historia;
import com.br.lp3.entities.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author willi
 */
public class AdminController extends HttpServlet {

    @EJB
    private DAOHistoriaLocal dAOHistoria;
    @EJB
    private DAOHeroimarvelLocal dAOHeroimarvel;

    @EJB
    private DAOHeroiLocal dAOHeroi;
    @EJB
    private DAOManagerLocal dAOUser;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String op;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        op = request.getAttribute("tipoOP").toString();
        if (op.equalsIgnoreCase("deleteuser")) {
            Integer iduser = Integer.parseInt(request.getAttribute("id").toString());
            int idheroi = buscaHeroi(iduser);
            Integer idmarvel = buscaHeroiMarvel(iduser);
            if (idheroi != -1) {
                deletaHistoria(idheroi);
                dAOHeroi.delete(idheroi);
            }
            dAOHeroimarvel.delete(idmarvel);
            dAOUser.delete(iduser);
            request.getSession().setAttribute("ListaUser", buscalist());
            request.getSession().setAttribute("ListaHeroi", buscaListHeroi());
            
            response.sendRedirect("TelaAdmin.jsp");
        }
        else if(op.equalsIgnoreCase("deleteheroi")){
            int idheroi = Integer.parseInt(request.getAttribute("idheroideleta").toString());
            deletaHistoria(idheroi);
            dAOHeroi.delete(idheroi);
            request.getSession().setAttribute("ListaHeroi", buscaListHeroi());
            response.sendRedirect("TelaAdmin.jsp");
        }
    }

    private List<Usuario> buscalist() {
        return dAOUser.readList();
    }
    
    private List<Heroi> buscaListHeroi(){
        return dAOHeroi.read();
    }

    private Integer buscaHeroi(Integer id) {
        List<Heroi> lista = dAOHeroi.read();
        for (Heroi h : lista) {
            if (Objects.equals(h.getIdUser().getIdUsuario(), id)) {
                return h.getIdHeroi();
            }
        }
        return -1;
    }

    private Integer buscaHeroiMarvel(Integer iduser) {
        List<Heroimarvel> lista = dAOHeroimarvel.read();
        for (Heroimarvel hm : lista) {
            if (Objects.equals(hm.getIdUsermarvel().getIdUsuario(), iduser)) {
                return hm.getIdHeroimar();
            }
        }
        return null;
    }

    public void deletaHistoria(Integer idheroi) {
        List<Historia> lista = dAOHistoria.readList();
        for (Historia h : lista) {
            if (Objects.equals(h.getIdheroi().getIdHeroi(), idheroi)) {
                dAOHistoria.delete(h.getIdHistoria());
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
