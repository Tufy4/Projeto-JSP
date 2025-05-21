package br.edu.ifsp.arq.dao;

import java.util.ArrayList;

import br.edu.ifsp.arq.model.Receita;
import br.edu.ifsp.arq.model.Usuario;


public class ReceitasDAO {
	private static ReceitasDAO instance;
	private static ArrayList<Receita> listaDeReceitas;
	
	private ReceitasDAO() {
		listaDeReceitas = new ArrayList<Receita>();
		
		
	}
	
	public static ReceitasDAO getInstance() {
		if(instance==null) {
			instance = new ReceitasDAO();
		}
		return instance;
	}
	
	
	public boolean adicionarReceitas(Receita t) {
		return this.listaDeReceitas.add(t);
		
	}
	
	public ArrayList<Receita> getListaReceitas(){
//		if(lista)
		return this.listaDeReceitas;
	}
	
	public Receita getReceita(String id) {
		Receita ReceitaBusca=null;
		
		int ID = Integer.parseInt(id);
		for(Receita RECEITA:listaDeReceitas) {
			if(ID== RECEITA.getId()) {
				ReceitaBusca = RECEITA;
			}
		}
		
		
		return ReceitaBusca;
	}
	
}
