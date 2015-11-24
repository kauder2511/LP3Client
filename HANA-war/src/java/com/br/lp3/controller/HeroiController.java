/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp3.controller;

import com.br.lp3.DAO.DAOHeroiLocal;
import com.br.lp3.DAO.DAOHistoriaLocal;
import com.br.lp3.entities.Heroi;
import com.br.lp3.entities.Historia;
import com.br.lp3.entities.Usuario;
import com.br.lp3.entities.Vestimenta;
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
public class HeroiController extends HttpServlet {
    @EJB
    private DAOHistoriaLocal dAOHistoria;
    @EJB
    private DAOHeroiLocal dAOHeroi;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * 
     */
    
    String command;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        command = request.getAttribute("TipoOP").toString();
        
        if(command.equals("inserirHeroi")){
            Heroi novo = new Heroi();
            Vestimenta capacete = new Vestimenta(Integer.parseInt(request.getSession().getAttribute("cabeca").toString()));
            Vestimenta corpo = new Vestimenta(Integer.parseInt(request.getSession().getAttribute("corpo").toString()));
            novo.setIdCapacete(capacete);
            novo.setIdCorpo(corpo);
            novo.setNomeHeroi(request.getAttribute("nomeHeroi").toString());
            Usuario dono = (Usuario) request.getSession().getAttribute("Usuario");
            novo.setIdUser(dono);
            dAOHeroi.inserir(novo);
            request.getSession().setAttribute("Heroi", novo);
            
            novo = buscaHeroi(dono);
            Historia intro = new Historia();
            intro.setHistoria(request.getAttribute("histIntro").toString());
            intro.setIdheroi(novo);
            intro.setRoteiro(1);
            dAOHistoria.inserir(intro);
            Historia meio = new Historia();
            meio.setHistoria(request.getAttribute("histMeio").toString());
            meio.setIdheroi(novo);
            meio.setRoteiro(2);
            dAOHistoria.inserir(meio);
            Historia fim = new Historia();
            fim.setHistoria(request.getAttribute("histFim").toString());
            fim.setIdheroi(novo);
            fim.setRoteiro(3);
            dAOHistoria.inserir(fim);
        }
    }

    private Heroi buscaHeroi(Usuario user) {
        List<Heroi> lista = dAOHeroi.read();
        for (Heroi her : lista) {
            if (Objects.equals(her.getIdUser().getIdUsuario(), user.getIdUsuario())) {
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
