import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class Node {

    private List<Node> childs;
    private List<Node> leafs;
    private String name;
    private String data;
    private String incrementalPath;
    private int version;
    private String creation;
    private String modification;

    public Node(String fileName, String incrementalPath , String fileData) {
        this.childs = new ArrayList<Node>();
        this.leafs = new ArrayList<Node>();
        this.name = fileName;
        this.data = fileData;
        this.incrementalPath = incrementalPath;
        this.version = 0;
        this.creation = Long.toString(System.currentTimeMillis());
        this.modification = Long.toString(System.currentTimeMillis());
    }

    //Getters and setters
    public void setChilds(List<Node> childs)
    {
      this.childs = childs;
    }

    public List<Node> getChilds()
    {
        return this.childs;
    }

    public void setLeafs(ArrayList<Node> leafs)
    {
      this.leafs = leafs;
    }

    public List<Node> getLeafs()
    {
        return this.leafs;
    }

    public void setName(String name)
    {
      this.name = name;
    }

    public String getName()
    {
      return this.name;
    }

    public void setData(String data)
    {
      this.data = data;
    }
    public String getData()
    {
      return this.data;
    }

    public void setPath(String path)
    {
      this.incrementalPath = path;
    }

    public String getPath()
    {
      return this.incrementalPath;
    }

    public void setVersion(int version)
    {
      this.version = version;
    }

    public int getVersion()
    {
      return this.version;
    }

    public void setCreation(String creation)
    {
      this.creation = creation;
    }

    public String getCreation()
    {
      return this.creation;
    }

    public void setModification(String modification)
    {
      this.modification = modification;
    }

    public String getModification()
    {
      return this.modification;
    }

    public boolean isLeaf() {
        return childs.isEmpty() && leafs.isEmpty();
    }

    public void addElement(String currentPath, String[] list, String data) {
        while( list[0] == null || list[0].equals("") )
            list = Arrays.copyOfRange(list, 1, list.length);

        Node currentChild = new Node(list[0], currentPath+"/"+list[0], data);
        if ( list.length == 1 ) {
            leafs.add( currentChild );
            childs.add(currentChild);
            return;
        } else {
            int index = childs.indexOf( currentChild );
            if ( index == -1 ) {
                childs.add( currentChild );
                currentChild.addElement(currentChild.incrementalPath, Arrays.copyOfRange(list, 1, list.length), data);
            } else {
                Node nextChild = childs.get(index);
                nextChild.addElement(currentChild.incrementalPath, Arrays.copyOfRange(list, 1, list.length), data);
            }
        }
    }

    /*

    public void removeElement(No filho){
    		int i;
    		for (i=0; i<this.filhos.size(); i++){
    			if (this.filhos.get(i).getNome() == filho.getNome()){
    				this.filhos.remove(this.filhos.get(i));
    			}
    		}
    	}
      */
    @Override
    public boolean equals(Object obj) {
        Node cmpObj = (Node)obj;
        return incrementalPath.equals( cmpObj.incrementalPath ) && data.equals( cmpObj.data );
    }

    public void printNode( int increment ) {
        for (int i = 0; i < increment; i++) {
            System.out.print(" ");
        }
        System.out.println(incrementalPath + (isLeaf() ? " -> " + data : "")  );
        for(Node n: childs)
            n.printNode(increment+2);
        for(Node n: leafs)
            n.printNode(increment+2);
    }

    @Override
    public String toString() {
        return name;
    }

    public void modify(String content)
    {
        this.setData(content);
        this.setVersion(this.getVersion()+1);
        this.setModification(Long.toString(System.currentTimeMillis()));
    }

}
