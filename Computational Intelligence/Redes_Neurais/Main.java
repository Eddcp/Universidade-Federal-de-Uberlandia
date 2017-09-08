import java.util.*;
import java.io.*;

public class Main{
	
	public static void main(String[] args){
		
		int bias = 1;
		double learningRate = 1;
		boolean isRandom = true;
		int sizeOfEntry=0;
		int numberOfNeurons=1;
		
	
		
		ArrayList<Integer> entryNumber0 = Util.readFile("InputData/number0/number0");
		ArrayList<Integer> entryNumber1 = Util.readFile("InputData/number1/number1");
		//Add bias in the first position and shift the subsequents to the right
		entryNumber0.add(0,bias);
		entryNumber1.add(0,bias);

		//Could be either entrynumber0 or entrynumber1
		sizeOfEntry=entryNumber0.size();

		//Expected outputs;
		int expectedOutputs[] = {0,1};

		//Create array of samples
		ArrayList<ArrayList<Integer>> samples = new ArrayList<ArrayList<Integer>>();
		samples.add(entryNumber0);
		samples.add(entryNumber1);
		
		//Start perceptron
		Perceptron p = new Perceptron(learningRate, sizeOfEntry, numberOfNeurons, isRandom);
		//System.out.println(p.getWeights());
		p.train(samples,expectedOutputs);
		System.out.println(p.getWeights());
		System.out.println(p.getEpochsCount());
		
		ArrayList<Integer> entry = Util.readFile("InputData/number0/number0");
		entry.add(0,bias);
		
		System.out.println("Result entry number 0: "+p.classify(entry));
			
	}
}