package br.com.fatecpg.nome;

import java.util.ArrayList;


public class Db {
    //Array List
    private static ArrayList<Dados> dados;
    public static ArrayList<Dados> getDados(){
            if(dados == null){
                dados = new ArrayList<>();
                dados.add(new Dados("Dona Maria", "donamaria@hotmail.com", "(11) 91234-5678"));
                dados.add(new Dados("Dona Josefina", "donajosefina@gmail.com", "(11) 99876-5432"));
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
