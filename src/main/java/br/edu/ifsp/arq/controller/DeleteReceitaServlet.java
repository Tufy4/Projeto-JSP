package br.edu.ifsp.arq.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifsp.arq.dao.ReceitasDAO;
import br.edu.ifsp.arq.model.Receita;

@WebServlet("/DeleteReceitaServlet")
public class DeleteReceitaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ReceitasDAO dao=ReceitasDAO.getInstance();
    
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");
        if (idParam != null) {
            int id = Integer.parseInt(idParam);

            ArrayList<Receita> listaReceitas = dao.getListaReceitas();

            if (listaReceitas != null) {
                Receita receitaAExcluir = null;
                for (Receita receita : listaReceitas) {
                    if (receita.getId() == id) {
                        receitaAExcluir = receita;
                        break;
                    }
                }

                if (receitaAExcluir != null ) {
                    listaReceitas.remove(receitaAExcluir);
                   
                }
            }
        }
        
        response.sendRedirect("ReadReceitaServlet");
    }
}
