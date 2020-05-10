package br.com.fatecpg.musica;

import java.util.ArrayList;


public class Db {
    //Array List
    private static ArrayList<Dados> dados;
    public static ArrayList<Dados> getDados(){
            if(dados == null){
                dados = new ArrayList<>();
                dados.add(new Dados("Emperor's New Clothes", "Panic At The Disco", "Death Of a Bachelor"));
                dados.add(new Dados("Bohemian Rhapsody", "Queen", "A Night At The Opera"));
            }
            return dados;
    }
    //metodo para inserir contato
    public static void  addDados(Dados dado){
        dados.add(dado);
    }
    //metodo para alterar contato
    public static void updateDados(int index, Dados dado){
        dados.set(index, dado);
    }
    //metodo para remover contato
    public static void remove(int index){
        dados.remove(index);
        
    } 
}
