import java.util.*;

public class Tree {

    private Node root;
    private Node commonRoot;

    public Tree(Node root) {
        this.root = root;
        this.commonRoot = null;
    }

    public Node getRoot()
    {
      return this.root;
    }

    public void setRoot(Node root)
    {
      this.root = root;
    }

    public boolean deleteElement(String elementValue, Node root)
    {
        //Separar String
        int i=0;
        String s=null;
        //System.out.println("elementValue: "+elementValue);
        String[] list = elementValue.split("/");

        Node n = new Node("root","root", "/");
        List<Node> childs;
        String elementToRemove = list[list.length-1];

        //System.out.println("Elemento a ser removido"+elementToRemove);
        //Se tiver tamanho 2, é um filho imediato da raiz list[0] = "/" list[1]= filho a ser removido
        if(list.length==2)
        {
       //   System.out.println("entrei aqui");
          n = this.getRoot();
          childs = n.getChilds();
          for(i=0; i<childs.size(); i++)
          {
            if(childs.get(i).getName().equals(elementToRemove))
            {
       //        System.out.println("achei o elemento");
               childs.remove(i);
            }
          }

          n.setChilds(childs);
         // System.out.println("Novos filhos: "+n.getChilds() );
        }
        else{

          list = Arrays.copyOf(list, list.length-1);
        //  List<String> listaux = Arrays.asList(list); //pega array e transforma em arraylist
          s = String.join("/", list);
        //  System.out.println("Aqui é o s :"+ s);
        //  System.out.println("aqui é o: "+elementToRemove);
          //Vou na posição do pai.
          n = this.bfs(root, "root"+s);
          if(n!=null)
          {
             childs = n.getChilds();
             for(i=0; i<childs.size(); i++)
             {
               if(childs.get(i).getName().equals(elementToRemove))
               {
                  childs.remove(i);
               }
             }
             n.setChilds(childs);
          }
        }

        //System.out.println("Novos filhos: "+ n.getChilds());
        return true;
    }

    public void addElement(String elementValue, String data) {
        String[] list = elementValue.split("/");

        root.addElement(root.getPath(), list, data);
    }

    public void printTree() {
        this.getCommonRoot().printNode(0);
    }

    public Node getCommonRoot() {
        if ( this.commonRoot != null)
            return this.commonRoot;
        else {
            Node current = root;
            while ( current.getLeafs().size() <= 0 ) {

                current = current.getChilds().get(0);
            }
            this.commonRoot = current;
            return this.commonRoot;
        }

    }

    //Busca em largura
    public Node bfs(Node rootBFS, String path)
    {
      //  Node raiz = this.root;
        //Se path for só barra, retorna a raiz
      //  if (path.equals("/"))
      //    return raiz ;

        Queue<Node> queue = new LinkedList<Node>();
        Set<Node> visited = new HashSet<Node>();

        Node aux = new Node("root", "root", "/");

        if(rootBFS == null) return rootBFS;

        if(path.equals("root/"))  return rootBFS;

        queue.add(rootBFS);
        visited.add(rootBFS);

        while(!queue.isEmpty())
        {
            Node r = queue.remove();

            for(Node n: r.getChilds())
            {
              //  System.out.println("Node n: "+ n);
                if(!visited.contains(n))
                {
                    queue.add(n);
                    visited.add(n);
                    if(n.getPath().equals(path))
                    {
                        aux = n;
                        return aux;
                    }
                }
            }
        }




        return null;
    }
}
