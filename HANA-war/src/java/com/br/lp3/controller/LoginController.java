package com.br.lp3.controller;

import com.br.lp3.DAO.DAOHeroiLocal;
import com.br.lp3.DAO.DAOHeroimarvelLocal;
import com.br.lp3.DAO.DAOHistSugestaoLocal;
import com.br.lp3.DAO.DAOHistoriaLocal;
import com.br.lp3.DAO.DAOManagerLocal;
import com.br.lp3.DAO.DAOVestimentaLocal;
import com.br.lp3.entities.Usuario;
import com.br.lp3.entities.Heroi;
import com.br.lp3.entities.Heroimarvel;
import com.br.lp3.entities.Historia;
import com.br.lp3.entities.Histsugestao;
import com.br.lp3.entities.Vestimenta;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.ejb.EJB;
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
public class LoginController extends HttpServlet {
    @EJB
    private DAOHistSugestaoLocal dAOHistSugestao;

    @EJB
    private DAOVestimentaLocal dAOVestimenta;

    @EJB
    private DAOHistoriaLocal dAOHistoria;
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
                if(user.getTipoUsuario()==1){
                    rd = request.getRequestDispatcher("/TelaAdmin.jsp");
                    request.getSession().setAttribute("Usuario", user);
                    request.getSession().setAttribute("ListaUser", buscaListaUsers());
                    request.getSession().setAttribute("ListaHeroi", buscalistaheroi());
                    
                    rd.forward(request, response);
                }
                request.getSession().setAttribute("Usuario", user);
                request.getSession().setAttribute("Heroimarvel", buscaMarvel(user));
                Heroi he = buscaHeroi(user);
                request.getSession().setAttribute("Heroi", he);
                request.getSession().setAttribute("Listaheroi", buscalistaheroi());
                request.getSession().setAttribute("Listahistoria", buscaHistoria(he));
                request.getSession().setAttribute("ListaVestimenta", buscaVestimenta());
                
                request.getSession().setAttribute("ListaHistSuges", buscaListaSug(he));
                
                request.getSession().setAttribute("cabeca", 1);
                request.getSession().setAttribute("imagemCabeca", "cabeca1.png");
                request.getSession().setAttribute("corpo", 3);
                request.getSession().setAttribute("imagemCorpo", "tronco1.png");
                rd = request.getRequestDispatcher("/TelaInicial.jsp");
                rd.forward(request, response);
            }

            rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);

        }
    }

    private List<Usuario> buscaListaUsers(){
        return dAOUser.readList();
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

    private Heroi buscaHeroi(Usuario user) {
        List<Heroi> lista = dAOHeroi.read();
        for (Heroi her : lista) {
            if (Objects.equals(her.getIdUser().getIdUsuario(), user.getIdUsuario())) {
                return her;
            }
        }

        return null;
    }

    private List<Heroi> buscalistaheroi() {
        return dAOHeroi.read();
    }

    private List<Historia> buscaHistoria(Heroi heroi) {
        List<Historia> lista = dAOHistoria.readList();
        List<Historia> listahistoria = new ArrayList<>();
        if (heroi == null) {
            return null;
        }
        for (Historia hist : lista) {
            if ((Objects.equals(hist.getIdheroi().getIdHeroi(), heroi.getIdHeroi()))
                    && ((hist.getRoteiro() == 1) || (hist.getRoteiro() == 2) || (hist.getRoteiro() == 3))) {
                listahistoria.add(hist);
            }
        }
        return listahistoria;
    }

    public List<Vestimenta> buscaVestimenta() {
        List<Vestimenta>lista = dAOVestimenta.read();
        return lista;
    }
    
    public List<Histsugestao> buscaListaSug(Heroi idheroi ){
        List<Histsugestao> lista = new ArrayList<>();
        if(idheroi==null){
            return null;
        }
        for (Histsugestao hs : dAOHistSugestao.read()) {
            if(Objects.equals(hs.getIdheroi().getIdHeroi(), idheroi.getIdHeroi())){
                lista.add(hs);
            }
        }
        
        return lista;
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
