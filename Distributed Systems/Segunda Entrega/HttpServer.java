import java.util.*;
import java.net.*;
import java.io.*;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class HttpServer implements Runnable{

  private Tree fileTree;
  private Node root;
  private Socket socket;
  private Lock lock;


   /*A ReentrantLock is owned by the thread last successfully locking, 
   but not yet unlocking it. A thread invoking lock will return, successfully acquiring the lock, 
   when the lock is not owned by another thread.
    The method will return immediately if the current thread already owns the lock. 
    This can be checked using methods isHeldByCurrentThread(), and getHoldCount(). 
    */

  public HttpServer(Tree fileTree, Node root, Socket socket) {

     this.fileTree = fileTree;
     this.root = root;
     this.socket = socket;
     this.lock = new ReentrantLock();

   }

  public void setSocket(Socket socket)
  {
    this.socket = socket;
  }

  public Socket getSocket()
  {
    return this.socket;
  }

  public void setTree(Tree t)
  {
    this.fileTree = t;
  }

  public Tree getTree()
  {
    return this.fileTree;
  }

  public void setNode(Node root){
    this.root = root;
  }

  public Node getRoot()
  {
    return this.root;
  }

  public static String message200ok(String method, Node n)
  {
        String msg;
       // System.out.println("Aqui o metodo e o nodo "+method+" "+n);
        msg = "HTTP/1.1"+" 200 OK\nVersion: "+
              n.getVersion()+"\n"+"Creation: "+
              n.getCreation()+"\n"+"Modification: "+ n.getModification();
      
        if(method.equals("GET"))
        {
               msg = msg +"\n"+"Content-length: "+
                    n.getData().length()+"\n\n"+
                    n.getData();
        }
    //System.out.println(msg);
    return msg;
  }

  public String message201Created(int key, String value)
  {
    String msg = "HTTP/1.1 201 Created\nContent-Type: text/html\nConnection: Closed\r\n\r\n"+
                "<!DOCTYPE HTML PUBLIC>"+
                "<html><head>"+
                "<title>201 Created</title>"+
                "</head><body>"+
                "<h1>Key: " + key + "</h1>"+
                "<p>Value: " + value + "</p>"+
                "</body></html>";
    return msg;
  }

  public String message204NoContent()
  {
    String msg = "HTTP/1.1 204 No Content\nContent-Type: text/html\nConnection: Closed\r\n\r\n"+
                 "<!DOCTYPE HTML PUBLIC>"+
                 "<html><head>"+
                 "<title>204 No Content</title>"+
                 "</head><body>"+
                 "<h1>Success</h1>"+
                 "</body></html>";
    return msg;
  }

  public String message400BadRequestPOST(Node n)
  {
    String msg = "HTTP/1.1 400 Bad Request\n"+"Version: "+n.getVersion()+"\n"+"Creation: "+
              n.getCreation()+"\n"+"Modification: "+ n.getModification()+ "</p>"+"+Content-Type: text/html\nConnection: Closed\r\n\r\n"+
		             "<!DOCTYPE HTML PUBLIC>"+
                 "<html><head>"+
                 "<title>400 Bad Request</title>"+
                 "</head><body>"+
                 "<h1>Bad Request</h1>"+
                 "<p>Your request was invalid.</p>"+
            // n.getVersion()+"\n"+"Creation: "+
             // n.getCreation()+"\n"+"Modification: "+ n.getModification()+ "</p>"+
                 "</body></html>";
    return msg;
  }

  public String message400BadRequest()
  {
    String msg = "HTTP/1.1 400 Bad Request\nContent-Type: text/html\nConnection: Closed\r\n\r\n"+
                 "<!DOCTYPE HTML PUBLIC>"+
                 "<html><head>"+
                 "<title>400 Bad Request</title>"+
                 "</head><body>"+
                 "<h1>Bad Request</h1>"+
                 "<p>Your request was invalid.</p>"+
                 "</body></html>";
    return msg;
  }

  public String message404NotFound(String key)
  {
    String msg = "HTTP/1.1 404 Not Found\nContent-Type: text/html\nConnection: Closed\r\n\r\n"+
              		"<!DOCTYPE HTML PUBLIC>"+
              		"<html><head>"+
              		"<title>404 Not Found</title>"+
              		"</head><body>"+
              		"<h1>Not Found</h1>"+
              		"<p>The requested file " + key + " was not found on this server.</p>"+
              		"</body></html>";

    return msg;
  }

  public String message501NotImplement()
  {
    String msg = "HTTP/1.1 501 Not Implemented\nContent-Type: text/html\nConnection: Closed\r\n\r\n"+
		             "<!DOCTYPE HTML PUBLIC>"+
            		 "<html><head>"+
            		 "<title>501 Not Implemented</title>"+
            		 "</head><body>"+
            		 "<h1>Not Implemented</h1>"+
            		 "<p>The server does not support the functionality required to fulfill the request.</p>"+
            		 "</body></html>";
     return msg;
  }

  public void executeGET(Tree tree, Node n, String fileName, PrintStream ps)
  {
      //Node n = new Node("root", "root", "/");
      Node aux = n;
      boolean fileExist=true;
      aux = tree.bfs(n, "root"+fileName);

      System.out.println("root"+fileName);
      if(aux==null)
          fileExist = false;

      if(fileExist)
      {
        ps.print(this.message200ok("GET",aux));
      }
      else
      {
        ps.print(this.message404NotFound(fileName));
      }

  }

  public void executeHEAD(Tree tree, Node n, String fileName, PrintStream ps)
  {
      //Node n = new Node("root", "root", "/");
      boolean fileExist=true;
      Node aux = n;
      aux = tree.bfs(n, "root"+fileName);
      if(aux==null)
          fileExist = false;

      if(fileExist)
      {
        //String endRequest = st.nextToken();
        ps.println(this.message200ok("HEAD",aux));
      }
      else
      {
        ps.println(this.message404NotFound(fileName));
      }

  }

  public void executePOST(Tree tree, Node n, String fileName, PrintStream ps, String contentPOSTorPUT)
  {
      
      boolean fileExist=false;
      Node aux = n;
      aux = tree.bfs(n, "root"+fileName);

      if(aux!=null)
      {
      //  ps.println("File already exists");
        ps.println(this.message400BadRequestPOST(aux));
        //return;
      }
      else
      {
          tree.addElement(fileName,contentPOSTorPUT);
          aux = tree.bfs(n, "root"+fileName);
          ps.println(this.message200ok("POST",aux));
      }
  }

  public void executePUT(Tree tree, Node n, String fileName, PrintStream ps, String contentPOSTorPUT)
  {
    boolean fileExist=true;
    Node aux = n;
    aux = tree.bfs(n, "root"+fileName);
    if(aux==null)
        fileExist = false;
    if(fileExist)
    {
      //String endRequest = st.nextToken();
     // System.out.println("Aqui o aux"+ aux);
      aux.modify(contentPOSTorPUT);
      String msg = this.message200ok("PUT", aux);
      System.out.println("Message: "+msg);
      ps.println(msg);
    }
    else
    {
      ps.println(this.message404NotFound(fileName));
    }
  }

  public void executeDELETE(Tree tree, Node root, String fileName, PrintStream ps)
  {
      boolean fileExist=false;
      Node aux = root;
      aux = tree.bfs(root, "root"+fileName);
      if(aux==null)
      {
        ps.println("File doesn't exists");
        return;
      }
      else
      {
        //TODO colocar num método isso aqui
       tree.deleteElement(fileName, root);
       //System.out.println(tree.deleteElement(fileName, root));
       ps.println("File deleted with success!");
      }
  }

  public void run()
  {
    try {
      //Irá tentar dar lock, se indisponível tentará mais uma vez depois do tempo especificado
      if(lock.tryLock(10, TimeUnit.SECONDS)) 
         execute();
    } catch (Exception e) {
     System.out.println(e);
    }
    finally{
      //release lock
      lock.unlock();
    }
  }

  public void execute() throws IOException
  {
    int sizeGreatherThan1k=0;  
    BufferedReader input=null;
    BufferedReader postput=null;
    PrintStream ps=null;
    String line; //Linha a ser linda
    int tamanhoContent=0;
    String contentPOSTorPUT=null;

    Scanner scan = new Scanner(System.in);

    try{
       int linharequisicao=0;  
       System.out.println("Nova conexão com o cliente " +
         this.socket.getInetAddress().getHostAddress()
       );
       input = new BufferedReader(new InputStreamReader(this.socket.getInputStream(), "ISO-8859-1"));
       ps = new PrintStream(this.socket.getOutputStream());
       //Lê primeira linha
       line = input.readLine();
       String request[] = line.split(" "); //Faz splita da primeira linha para pegar o método
       
       String secondLineRequest[] = null;
       String thirdLineRequest[]=null;

       int flagSecond=0;
       int flagPOSTPUT=0;
       linharequisicao++;

       String fileName = request[1]; //Nome do arquivo
    //   System.out.println("Nome do arquivo: "+fileName);
       //Verifica tamanho do nome do arquivo
       if(fileName.length() > 100)
       {
         ps.println("Error: Size of file's name can't be greather than 100");
         this.socket.close();
       }

       //Verifica se foram passados 3 parametros na primeira linha
      if(request.length<3)
      {
        ps.println("Error: At least 3 parameters are needed");
        this.socket.close();
      }
      //Deixar esses ifs dentro de um método que analisa qual é a opção:GET,PUT,POST...
      if(!request[0].equals("GET") && !request[0].equals("HEAD") && !request[0].equals("PUT") && !request[0].equals("POST") && !request[0].equals("DELETE"))
      {
         System.out.println(this.message400BadRequest());
      }
       //Lê as próximas linhas

      try{
        while(!line.isEmpty())
        {
           line = input.readLine();
           linharequisicao++;
           System.out.println(line);
           if(linharequisicao == 2) //Segunda linha
           {
              secondLineRequest = line.split(" ");
              flagSecond=1;
           }
           if(line.startsWith("Content-Length:"))
           {
            // System.out.println(line);
             thirdLineRequest = line.split(" ");
             if(!request[0].equals("GET") && !request[0].equals("HEAD") && !request[0].equals("DELETE"))
             {
               tamanhoContent = Integer.parseInt(thirdLineRequest[1]);
            //   System.out.println("Tamanho: "+tamanhoContent);
               if(tamanhoContent > 1024)
               {
                 ps.println("Size of data can't be greather than 1024\n");
                 sizeGreatherThan1k=1;
                 break;
               }
               flagPOSTPUT=1;
             }
          }
        }
      }
      catch(Exception e)
      {
         e.printStackTrace();
         scan.nextInt();
      }

      if(flagSecond==1)
      {
        if(!secondLineRequest[0].equals("Host:") && !request[0].equals("GET"))
        {
          ps.println("Host most be provided!");
          this.socket.close();
        }
      }
      //Cria o payload que irá ler os bytes de conteúdo do POST e PUT
      StringBuilder payload = new StringBuilder();
      if(flagPOSTPUT==1)
      {
        //Essa é a maneira pra solucionar o problema, pq a payload são os dados do post e o readLine bugava
          while(input.ready()){
            payload.append((char) input.read());
          }
         // System.out.println("Payload data is: "+payload.toString());
          contentPOSTorPUT = payload.toString();
          System.out.println("Conteudo: "+contentPOSTorPUT);
          //scan.nextInt();
        //  System.out.println("Content: "+contentPOSTorPUT);
          if(contentPOSTorPUT.length()!=tamanhoContent)
          {
            ps.println("Size is diferent from the specified");
            this.socket.close();
          }
          else if(contentPOSTorPUT.length() > 1024)
          {
            ps.println("Size of data can't be greather than 1024\n");
            sizeGreatherThan1k=1;
            this.socket.close();
          }

      }

      //Acabou todas as verificações, ai verifica qual método e manda a resposta para o cliente
      if(request[0].equals("GET"))
         this.executeGET(this.getTree(), this.getRoot(), fileName, ps);

      else if(request[0].equals("HEAD"))
        this.executeHEAD(this.getTree(), this.getRoot(), fileName, ps);
      else if(request[0].equals("POST"))
      {
        if(sizeGreatherThan1k!=1)
          this.executePOST(this.getTree(), this.getRoot(), fileName, ps, contentPOSTorPUT);
        else
          this.socket.close();
      }
      //Delete deixando deletar o mesmo arquivo duas vezes, arrumar
      else if(request[0].equals("DELETE"))
        this.executeDELETE(this.getTree(), this.getRoot(), fileName, ps);
      else if(request[0].equals("PUT"))
        this.executePUT(this.getTree(), this.getRoot(), fileName, ps, contentPOSTorPUT);

      linharequisicao=0;
      flagPOSTPUT=0;
      flagSecond=0;
    }
    catch(Exception e)
    {

      System.err.println(e);
    }
    finally
    {
      input.close();
      this.socket.close();
    }
  }
}