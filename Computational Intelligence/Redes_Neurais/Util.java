import java.util.*;
import java.io.*;

/*
	IMPORTANT: IF THE DIRECTORY CHANGES THE PATH NEEDS TO BE CHANGED!!
*/
public abstract class Util {

	public static ArrayList<Integer> readFile(String fileName){
		ArrayList<Integer> entry = new ArrayList<Integer>();
		int rows = 6;
		int cols = 5;

		try
		{
			//The string should be rename if the directory is changed.
			Scanner fileReader = new Scanner (new File("/home/eduardo/Documentos/Faculdade/IC/Redes_Neurais/"+fileName));
			int patternMatrix[][] = new int[rows][cols];
			int expectedOutput = 0;
			for(int i = 0; i < rows; i++)
			{
			    for(int j = 0; j < cols; j++)
			    {
			        if(fileReader.hasNextInt())
			        {
			            patternMatrix[i][j] = fileReader.nextInt();
			            entry.add(patternMatrix[i][j]);
			        }
			    }
			}
		}
		catch (FileNotFoundException | NoSuchElementException ex) 
		{ 
       		 System.out.println("Exception caught");
   		}

   		return entry;
	}
}