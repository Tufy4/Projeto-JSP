package br.edu.ifsp.arq.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifsp.arq.dao.ReceitasDAO;
import br.edu.ifsp.arq.dao.UsuarioDAO;
import br.edu.ifsp.arq.model.Receita;
import br.edu.ifsp.arq.model.Usuario;

@WebServlet("/CreateUsuarioServlet")

public class CreateUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int erro;
	 private UsuarioDAO dao=UsuarioDAO.getInstance();  
   

	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String nomeUsuario = request.getParameter("nome");
		    String password = request.getParameter("password");

		    if (dao.ExisteUsuario(nomeUsuario,password)==false) {
		        Usuario newUser = new Usuario(nomeUsuario, password);
		        dao.adicionarUsuarios(newUser);
		        System.out.println("DEU CERTO");
		        request.getRequestDispatcher("/login.jsp").forward(request, response);
		    } else {
		        request.setAttribute("erro", "Usuário já existe!");
		        request.getRequestDispatcher("/index.jsp").forward(request, response);
		    }
		}

}
