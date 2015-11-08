package com.br.lp3.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Raquel Gallo (31458521)
 * @author William Cisang (31441564)
 */
public class FrontController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String command, imagem, action;
    int tipo, id, iduser;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        RequestDispatcher rd;

        if (command.equalsIgnoreCase("login")) {
            rd = request.getRequestDispatcher("/LoginController");
            request.setAttribute("usuario", request.getParameter("username"));
            request.setAttribute("senha", request.getParameter("password"));
            rd.forward(request, response);
        } else if (command.equalsIgnoreCase("cadastro")) {
            rd = request.getRequestDispatcher("/UsuarioController");
            request.setAttribute("nome", request.getParameter("nome"));
            request.setAttribute("usuario", request.getParameter("usuario"));
            request.setAttribute("senha", request.getParameter("senha"));
            request.setAttribute("email", request.getParameter("email"));
            request.setAttribute("tipo", "inserir");

            rd.forward(request, response);
        } else if (command.equalsIgnoreCase("escolhamarvel")) {
            rd = request.getRequestDispatcher("/MarvelController");
            request.setAttribute("nome", request.getParameter("nomemarvel"));
            rd.forward(request, response);
        } else if (command.equalsIgnoreCase("editarhistoria")) {
            rd = request.getRequestDispatcher("/HistoriaController");
            request.setAttribute("historia", request.getParameter("historia"));
            rd.forward(request, response);
        } else if (command.equals("imagemPersonagem")) {
            rd = request.getRequestDispatcher("TelaMeuHeroi.jsp");
            if (tipo == 1) {
                request.getSession().setAttribute("cabeca", id);
                request.getSession().setAttribute("imagemCabeca", imagem);
            } else {
                request.getSession().setAttribute("corpo", id);
                request.getSession().setAttribute("imagemCorpo", imagem);
            }
            rd.forward(request, response);

        }else if(command.equals("deleteuser")){
            rd = request.getRequestDispatcher("/AdminController");
            rd.forward(request, response);
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
        action = (request.getParameter("action") != null) ? request.getParameter("action") : null;
        if (action != null) {
            switch(action){
                case "deleteuser":
                    command = action;
                    iduser = Integer.parseInt(request.getParameter("id"));
                    request.setAttribute("tipoOP", "DeleteUser");
                    request.setAttribute("id", iduser);
                    break;
            }
        } else {
            id = Integer.parseInt(request.getParameter("id"));
            tipo = Integer.parseInt(request.getParameter("tipo"));
            imagem = request.getParameter("vest").toString();
            command = "imagemPersonagem";
        }
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

        command = request.getParameter("command");
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
