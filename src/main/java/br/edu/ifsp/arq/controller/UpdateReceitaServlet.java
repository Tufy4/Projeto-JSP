package br.edu.ifsp.arq.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifsp.arq.dao.ReceitasDAO;
import br.edu.ifsp.arq.model.Receita;

@WebServlet("/UpdateReceitaServlet")
public class UpdateReceitaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ReceitasDAO dao;
    public UpdateReceitaServlet() {
    	super();
    	dao = ReceitasDAO.getInstance();
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    	
    	int id = Integer.parseInt(request.getParameter("id"));

        ArrayList<Receita> listaReceitas = dao.getListaReceitas();
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
            
            out.println("<!DOCTYPE html>");
            out.println("<html lang='pt-br'>");
            out.println("<head>");
            out.println("<meta charset='UTF-8'>");
            out.println("<meta name='viewport' content='width=device-width, initial-scale=1'>");
            out.println("<title>Editar Receita</title>");
            out.println("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css' rel='stylesheet'>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='container mt-5'>");
            out.println("<h2 class='mb-4'>Editar Receita</h2>");
            
            // Formulário com suporte para envio de arquivo
            out.println("<form action='/Projeto-Receitas/UpdateReceitaServlet' method='POST' enctype='multipart/form-data'>");

            out.println("<input type='hidden' name='id' value='" + receitaSelecionada.getId() + "'/>");

            out.println("<div class='mb-3'>");
            out.println("<label class='form-label'>Nome:</label>");
            out.println("<input type='text' class='form-control' name='nome' value='" + receitaSelecionada.getNomeReceita() + "' required>");
            out.println("</div>");

            out.println("<div class='mb-3'>");
            out.println("<label class='form-label'>Autor:</label>");
            out.println("<input type='text' class='form-control' name='autor' value='" + receitaSelecionada.getAutor() + "' required>");
            out.println("</div>");

            out.println("<div class='mb-3'>");
            out.println("<label class='form-label'>Tempo de Preparo:</label>");
            out.println("<input type='text' class='form-control' name='tempo' value='" + receitaSelecionada.getTempo() + "' required>");
            out.println("</div>");

            out.println("<div class='mb-3'>");
            out.println("<label class='form-label'>Categoria:</label>");
            out.println("<select class='form-select' name='categoria' required>");
            out.println("<option value='sobremesa'" + (receitaSelecionada.getCategoria().equalsIgnoreCase("sobremesa") ? " selected" : "") + ">Sobremesa</option>");
            out.println("<option value='pratoPrincipal'" + (receitaSelecionada.getCategoria().equalsIgnoreCase("pratoPrincipal") ? " selected" : "") + ">Prato Principal</option>");
            out.println("<option value='entrada'" + (receitaSelecionada.getCategoria().equalsIgnoreCase("entrada") ? " selected" : "") + ">Entrada</option>");
            out.println("</select>");
            out.println("</div>");

            out.println("<div class='mb-3'>");
            out.println("<label class='form-label'>Ingredientes:</label>");
            out.println("<textarea class='form-control' name='ingredientes' rows='4' required>" + receitaSelecionada.getIngredientes() + "</textarea>");
            out.println("</div>");

            out.println("<div class='mb-3'>");
            out.println("<label class='form-label'>Modo de Preparo:</label>");
            out.println("<textarea class='form-control' name='modo' rows='4' required>" + receitaSelecionada.getModoPreparo() + "</textarea>");
            out.println("</div>");

            out.println("<div class='mb-3'>");
            out.println("<label class='form-label'>Foto da Receita:</label>");
            out.println("<input type='file' class='form-control' name='foto' accept='image/*'>");
            out.println("</div>");

            out.println("<button type='submit' class='btn btn-primary'>Atualizar Receita</button>");
            out.println(" <a href='ReadReceitaServlet' class='btn btn-secondary ms-2'>Cancelar</a>");
            out.println("</form>");
            out.println("</div>");

            out.println("<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js'></script>");
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

        ArrayList<Receita> listaReceitas = dao.getListaReceitas();
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
            response.sendRedirect("ReadReceitaServlet"); 
        }
    }
}
