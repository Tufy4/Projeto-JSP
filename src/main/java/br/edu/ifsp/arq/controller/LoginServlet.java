package br.edu.ifsp.arq.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.ifsp.arq.dao.UsuarioDAO;
import br.edu.ifsp.arq.model.Usuario;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsuarioDAO dao;
	private int retorno;
	public String msg;
	public LoginServlet() {
		super();
		dao = UsuarioDAO.getInstance();	
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");

		if (usuario.isEmpty() || senha.isEmpty()) {
			msg = "Tem que preencher o campo de usuario e senha";	
			
			request.setAttribute("mensagem", msg);
			getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		} else {
			System.out.println(senha);
			Usuario t = new Usuario(usuario, senha);
			retorno = dao.FazerLogin(t);
			
			
			if(retorno == -1) {
				System.out.println("Não tem usuarios cadastrados");
			}else if(retorno == 0) {
				System.out.println("Não foi possivel fazer loginn");
				msg = "Senha ou Login incorretos";
				
				request.setAttribute("mensagem",msg );
				
				getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
				
			}
			else {
				System.out.println("Logado com sucesso");
				HttpSession session = request.getSession();
				session.setAttribute("usuario",t);
				System.out.println(session);
				getServletContext().getRequestDispatcher("/resposta.jsp").forward(request, response);
			}

		
		}
	}

}
