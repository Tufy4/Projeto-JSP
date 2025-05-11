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

@WebServlet("/UpdateReceitaServlet")
public class UpdateReceitaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UpdateReceitaServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        ArrayList<Receita> listaReceitas = (ArrayList<Receita>) getServletContext().getAttribute("lista");
        Receita receitaSelecionada = null;
        for (Receita receita : listaReceitas) {
            if (receita.getId() == id) {
                receitaSelecionada = receita;
                break;
            }
        }

        if (receitaSelecionada != null) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            
            out.println("<html>");
            out.println("<head><title>Editar Receita</title></head>");
            out.println("<body>");
            out.println("<h1>Editar Receita</h1>");
            out.println("<form action='/Atividade1/UpdateReceitaServlet' method='POST'>");
            out.println("<input type='hidden' name='id' value='" + receitaSelecionada.getId() + "'/>");
            out.println("<label>Nome: </label><input type='text' name='nome' value='" + receitaSelecionada.getNomeReceita() + "' required /><br>");
            out.println("<label>Autor: </label><input type='text' name='autor' value='" + receitaSelecionada.getAutor() + "' required /><br>");
            out.println("<label>Tempo de Preparo: </label><input type='text' name='tempo' value='" + receitaSelecionada.getTempo() + "' required /><br>");
            out.println("<label>Categoria: </label><input type='text' name='categoria' value='" + receitaSelecionada.getCategoria() + "' required /><br>");
            out.println("<label>Ingredientes: </label><textarea name='ingredientes'>" + receitaSelecionada.getIngredientes() + "</textarea><br>");
            out.println("<label>Modo de Preparo: </label><textarea name='modo'>" + receitaSelecionada.getModoPreparo() + "</textarea><br>");
            out.println("<input type='submit' value='Atualizar Receita' />");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nomeReceita = request.getParameter("nome");
        String autor = request.getParameter("autor");
        String tempoPreparo = request.getParameter("tempo");
        String categoria = request.getParameter("categoria");
        String ingredientes = request.getParameter("ingredientes");
        String modoPreparo = request.getParameter("modo");

        ArrayList<Receita> listaReceitas = (ArrayList<Receita>) getServletContext().getAttribute("lista");
        Receita receitaSelecionada = null;

        for (Receita receita : listaReceitas) {
            if (receita.getId() == id) {    
                receitaSelecionada = receita;
                break;
            }
        }

        if (receitaSelecionada != null) {
            receitaSelecionada.setNomeReceita(nomeReceita);
            receitaSelecionada.setAutor(autor);
            receitaSelecionada.setTempo(tempoPreparo);
            receitaSelecionada.setCategoria(categoria);
            receitaSelecionada.setIngredientes(ingredientes);
            receitaSelecionada.setModoPreparo(modoPreparo);

            getServletContext().setAttribute("lista", listaReceitas);
            response.sendRedirect("/Atividade1/ReadReceitaServlet"); 
        }
    }
}
