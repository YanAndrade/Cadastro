
package br.com.fatecpg.musica;

//Set e Get
public class Dados {
    private String musica;
    private String banda;
    private String disco;
    
    //Declaração
    public Dados(String musica, String banda, String disco) {
        this.musica = musica;
        this.banda = banda;
        this.disco = disco;
    }

    public String getMusica() {
        return musica;
    }

    public void setMusica(String musica) {
        this.musica = musica;
    }

    public String getBanda() {
        return banda;
    }

    public void setBanda(String banda) {
        this.banda = banda;
    }

    public String getDisco() {
        return disco;
    }

    public void setDisco(String disco) {
        this.disco = disco;
    }
}
