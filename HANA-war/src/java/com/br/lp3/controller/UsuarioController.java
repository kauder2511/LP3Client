/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.controller;

import com.br.lp3.DAO.DAOManagerLocal;
import com.br.lp3.entities.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author william
 */
public class UsuarioController extends HttpServlet {

    @EJB
    private DAOManagerLocal dAOUser;
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String tipo = request.getAttribute("tipo").toString();
            if (tipo.equalsIgnoreCase("inserir")) {
                Usuario u = new Usuario();
                u.setNomeUsuario(request.getAttribute("nome").toString());
                u.setLogin(request.getAttribute("usuario").toString());
                u.setSenha(request.getAttribute("senha").toString());
                u.setEmail(request.getAttribute("email").toString());
                u.setTipoUsuario(0);
                boolean ok = true;
                for (Usuario user : dAOUser.readList()) {
                    if (user.getLogin().equals(u.getLogin())) {
                        rd = request.getRequestDispatcher("/TelaCadastro.jsp");
                        rd.forward(request, response);
                        ok = false;
                    }
                }
                if (ok) {
                    dAOUser.inserir(u);
                    for (Usuario user : dAOUser.readList()) {
                        if (user.getLogin().equals(u.getLogin()) && user.getSenha().equals(u.getSenha())) {
                            request.getSession().setAttribute("Usuario", user);
                        }
                    }
                    rd = request.getRequestDispatcher("/TelaEscolhaMarvel.jsp");
                    rd.forward(request, response);
                }
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
