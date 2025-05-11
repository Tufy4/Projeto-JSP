package br.edu.ifsp.arq.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifsp.arq.model.Receita;

@WebServlet("/CreateReceitaServlet")
public class CreateReceitaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private int id = 1;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nomeReceita = request.getParameter("nomeReceita");
        String autor = request.getParameter("autor");
        String tempoPreparo = request.getParameter("tempoPreparo");
        String ingredientes = request.getParameter("ingredientes");
        String modoPreparo = request.getParameter("modoPreparo");
        String categoria = request.getParameter("categoria");
        int avaliacao = Integer.parseInt(request.getParameter("avaliacao"));

        Receita receita = new Receita(id, nomeReceita, autor, tempoPreparo, ingredientes, modoPreparo, categoria, avaliacao);

        ArrayList<Receita> listaReceitas = (ArrayList<Receita>) getServletContext().getAttribute("lista");
        
        if (listaReceitas == null) {
            listaReceitas = new ArrayList<Receita>();
            getServletContext().setAttribute("lista", listaReceitas);
        }

        listaReceitas.add(receita);
        id++;

        response.sendRedirect("ReadReceitaServlet");
    }
}
