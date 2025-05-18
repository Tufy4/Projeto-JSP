package br.edu.ifsp.arq.dao;

import java.util.ArrayList;
import br.edu.ifsp.arq.model.Usuario;

public class UsuarioDAO {
	private static UsuarioDAO instance;
	private static ArrayList<Usuario> listaDeUsuarios;
	
	private UsuarioDAO() {
		listaDeUsuarios = new ArrayList<Usuario>();
//		
//		Usuario automatico = new Usuario("miguel","123");
//		listaDeUsuarios.add(automatico);
		
	}
	
	public static UsuarioDAO getInstance() {
		if(instance==null) {
			instance = new UsuarioDAO();
		}
		return instance;
	}
	
	
	
	
	public boolean adicionarUsuarios(Usuario t) {
		return this.listaDeUsuarios.add(t);
		
	}
	
	public ArrayList<Usuario> getUsuarios(){
		return this.listaDeUsuarios;
	}
	
	public int FazerLogin(Usuario newUser) {
		int situacao = -1;
		if(!listaDeUsuarios.isEmpty()) {
			situacao = 0;
			for (Usuario user : listaDeUsuarios) {
				System.out.println(user.getUsuario());
				System.out.println(newUser.getUsuario());
				
				
				
				System.out.println(user.getSenha());
				System.out.println(newUser.getSenha());
				
				
				if(user.getUsuario().equals(newUser.getUsuario()) && user.getSenha().equals(newUser.getSenha())) {
					situacao = 1; 
				}
			}
		}
		
		return situacao;
	}
	
	public boolean ExisteUsuario(String user,String password) {
		boolean retorno =false;
			for(int i = 0;i<listaDeUsuarios.size();i++) {
				if(user.equals(listaDeUsuarios.get(i).getUsuario()) && password.equals(listaDeUsuarios.get(i).getSenha())) {
					retorno = true;
				}
					
			}
		
		
		
		return retorno;
	}
	
	
}
