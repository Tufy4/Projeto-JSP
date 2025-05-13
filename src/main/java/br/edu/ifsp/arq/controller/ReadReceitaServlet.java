package br.edu.ifsp.arq.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifsp.arq.model.Receita;

@WebServlet("/ReadReceitaServlet")
public class ReadReceitaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ReadReceitaServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Receita> listaReceitas = (ArrayList<Receita>) getServletContext().getAttribute("lista");

        PrintWriter out = response.getWriter();
        out.append("<h1>Lista de Receitas</h1>");

        out.append("<table border='1'>");
        out.append("<thead>");
        out.append("<tr>");
        out.append("<th>Nome</th>");
        out.append("<th>Autor</th>");
        out.append("<th>Tempo de Preparo</th>");
        out.append("<th>Categoria</th>");
        out.append("<th>Ações</th>");
        out.append("</tr>");
        out.append("</thead>");
        out.append("<tbody>");

        for (Receita receita : listaReceitas) {
            out.append("<tr>");
            out.append("<td>").append(receita.getNomeReceita()).append("</td>");
            out.append("<td>").append(receita.getAutor()).append("</td>");
            out.append("<td>").append(receita.getTempo()).append("</td>");
            out.append("<td>").append(receita.getCategoria()).append("</td>");
            out.append("<td>");
            
            out.append("<a href='/Projeto-Receitas/UpdateReceitaServlet?id=" + receita.getId() + "'>Editar</a> | ");
            out.append("<a href='/Projeto-Receitas/DeleteReceitaServlet?id=" + receita.getId() + "'>Deletar</a>");
            
            out.append("</td>");
            out.append("</tr>");
        }

        out.append("</tbody>");
        out.append("</table>");
        out.append("<a href='/Projeto-Receitas/index.jsp'>Adicionar Nova Receita</a>");
        out.append("</body></html>");
    }
}
