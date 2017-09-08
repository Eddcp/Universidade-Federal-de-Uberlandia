import java.util.*;
import java.io.*;

public class Exercicio1 {
	public static void main(String[] args){
		
		int bias = 1;
		double learningRate = 1;
		boolean isRandom = false;
		int sizeOfEntry=0;
		
		ArrayList<Integer> entryNumber0 = Util.readFile("InputData/number0/number0");
		ArrayList<Integer> entryNumber1 = Util.readFile("InputData/number1/number1");
		
		ArrayList<Integer> entryNumber0Distorted;
		ArrayList<Integer> entryNumber1Distorted;
		
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
		Perceptron p = new Perceptron(learningRate, sizeOfEntry, isRandom);
		//System.out.println(p.getWeights());
		p.train(samples,expectedOutputs);
		System.out.println("Weights after traning process: "+p.getWeights());
		System.out.println("\n\nNumber of epochs to learn the patterns: "+p.getEpochsCount());
		
		ArrayList<Integer> entry = Util.readFile("InputData/number0/number0");
		entry.add(0,bias);
		System.out.println("Result entry number 0: "+p.classify(entry));
		//Item c)
		System.out.println("Distorted 0 entrys");
		for(int i=1; i<=10; i++)
		{
			entryNumber0Distorted = Util.readFile("InputData/number0/number0_"+i);
			entryNumber0Distorted.add(0,bias);
			System.out.println("Result distorted entry number 0_"+i+": "+p.classify(entryNumber0Distorted));
		}

		System.out.println();
		entry = Util.readFile("InputData/number1/number1");
		entry.add(0,bias);
		System.out.println("Result entry number 1: "+p.classify(entry));
		//Item c)
		System.out.println("Distorted 1 entrys");
		for(int i=1; i<=10; i++)
		{
			entryNumber1Distorted = Util.readFile("InputData/number1/number1_"+i);
			entryNumber1Distorted.add(0,bias);
			System.out.println("Result distorted entry number 1_"+i+": "+p.classify(entryNumber1Distorted));
		}

		System.out.println();
		//Item c)
		System.out.println("Other entrys");
		for(int i=2; i<=5; i++)
		{
			entry = Util.readFile("InputData/number"+i+"/number"+i);
			entry.add(0,bias);
			System.out.println("Result distorted entry number "+i+": "+p.classify(entry));
		}

		
		
			
	}
}