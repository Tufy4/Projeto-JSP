package br.edu.ifsp.arq.model;

public class Receita {

    private int id;
    private String nomeReceita;
    private String autor;
    private String tempo;
    private String ingredientes;
    private String modoPreparo;
    private String categoria;
    private int avaliacao;

    // Construtor
    public Receita(int id, String nomeReceita, String autor, String tempo, 
                   String ingredientes, String modoPreparo, String categoria, int avaliacao) {
        this.id = id;
        this.nomeReceita = nomeReceita;
        this.autor = autor;
        this.tempo = tempo;
        this.ingredientes = ingredientes;
        this.modoPreparo = modoPreparo;
        this.categoria = categoria;
        this.avaliacao = avaliacao;
    }

    // Getters e Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomeReceita() {
        return nomeReceita;
    }

    public void setNomeReceita(String nomeReceita) {
        this.nomeReceita = nomeReceita;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getTempo() {
        return tempo;
    }

    public void setTempo(String tempo) {
        this.tempo = tempo;
    }

    public String getIngredientes() {
        return ingredientes;
    }

    public void setIngredientes(String ingredientes) {
        this.ingredientes = ingredientes;
    }

    public String getModoPreparo() {
        return modoPreparo;
    }

    public void setModoPreparo(String modoPreparo) {
        this.modoPreparo = modoPreparo;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public int getAvaliacao() {
        return avaliacao;
    }

    public void setAvaliacao(int avaliacao) {
        this.avaliacao = avaliacao;
    }
}
