/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.controller;

import com.br.lp3.DAO.DAOHeroiLocal;
import com.br.lp3.DAO.DAOHeroimarvelLocal;
import com.br.lp3.DAO.DAOManagerLocal;
import com.br.lp3.entities.Usuario;
import com.br.lp3.DAO.DAOUser;
import com.br.lp3.entities.Heroi;
import com.br.lp3.entities.Heroimarvel;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Raquel
 */
public class LoginController extends HttpServlet {
    @EJB
    private DAOHeroiLocal dAOHeroi;

    @EJB
    private DAOHeroimarvelLocal dAOHeroimarvel;

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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            String login = request.getAttribute("usuario").toString();
            String senha = request.getAttribute("senha").toString();
            RequestDispatcher rd;
            Usuario user = buscaUsuario(login, senha);
            if (user != null) {
                request.getSession().setAttribute("Usuario", user);
                request.getSession().setAttribute("Heroimarvel", buscaMarvel(user));
                request.getSession().setAttribute("Heroi", buscaHeroi(user));
                rd = request.getRequestDispatcher("/TelaInicial.jsp");
                rd.forward(request, response);
            }
            
            rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);

        }
    }

    private Usuario buscaUsuario(String login, String senha) {
        List<Usuario> lista = dAOUser.readList();
        for (Usuario u : lista) {
            if (u.getLogin().equals(login) && u.getSenha().equals(senha)) {
                return u;
            }
        }
        return null;
    }

    private Heroimarvel buscaMarvel(Usuario user) {
        List<Heroimarvel> listamarvel = dAOHeroimarvel.read();
        for (Heroimarvel h : listamarvel) {
            if (Objects.equals(user.getIdUsuario(), h.getIdUsermarvel().getIdUsuario())) {
                return h;
            }
        }

        return null;

    }
    
    private Heroi buscaHeroi(Usuario user){
        List<Heroi> lista = dAOHeroi.read();
        for (Heroi her : lista) {
            if(Objects.equals(her.getIdUser().getIdUsuario(), user.getIdUsuario())){
                return her;
            }
        }
        
        return null;
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
