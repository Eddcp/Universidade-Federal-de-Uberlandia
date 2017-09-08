import java.util.*;
import java.net.*;
import java.io.*;

public class Servidor{


    public static void main(String[] args) throws IOException{
      ServerSocket webSocket=null;
      int port = Integer.parseInt(args[0]);
      //Cria o no que será raiz
      Node n = new Node("root", "root", "/");
      //Cria a árvore com nó raiz
      Tree tree = new Tree(n);
      //Aloca a porta que será usada para a comunicação
      try{
         System.out.println("Alocando porta "+port);
         webSocket = new ServerSocket(port);
       } catch (IOException e) {
          System.out.println("Erro Fatal: " + e.getMessage());
       } catch (Exception e) {
         System.out.println("Erro Fatal: " + e.getMessage());
       }

      //A partir desse momento servidor está escutando
      while(true)
      {
        System.out.println("Aguardando...");
        //Aceita cliente
        Socket cliente = webSocket.accept();
        HttpServer request = new HttpServer(tree, n, cliente);
        
        Thread thread = new Thread(request);
        System.out.println(thread);
        thread.start(); //start thread
      }
    }
  }
