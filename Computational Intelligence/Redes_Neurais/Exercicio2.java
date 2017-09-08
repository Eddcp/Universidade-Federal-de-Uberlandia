import java.util.*;
import java.io.*;

public class Exercicio2 {
	public static void main(String[] args){
		int bias = 1;
		double learningRate = 1;
		boolean isRandom = false;
		int sizeOfEntry=0;
		int y1, y2;
		int twoNeuronsResult;
		
		ArrayList<Integer> entryNumber0 = Util.readFile("InputData/number0/number0");
		ArrayList<Integer> entryNumber1 = Util.readFile("InputData/number1/number1");

		ArrayList<Integer> entryNumberDistorted;

		//Add bias in the first position and shift the subsequents to the right
		entryNumber0.add(0,bias);
		entryNumber1.add(0,bias);

		//Could be either entrynumber0 or entrynumber1
		sizeOfEntry=entryNumber0.size();

		//Expected outputs;
		int expectedOutputsNeuron1[] = {1,0}; //pattern 0
		int expectedOutputsNeuron2[] = {0,1}; //pattern 1
		//Create array of samples
		ArrayList<ArrayList<Integer>> samples = new ArrayList<ArrayList<Integer>>();
		samples.add(entryNumber0);
		samples.add(entryNumber1);
		
		//Start perceptron
		Perceptron perceptronNeuron1 = new Perceptron(learningRate, sizeOfEntry, isRandom);
		Perceptron perceptronNeuron2 = new Perceptron(learningRate, sizeOfEntry, isRandom);
		//System.out.println(p.getWeights());
		perceptronNeuron1.train(samples,expectedOutputsNeuron1);
		perceptronNeuron2.train(samples,expectedOutputsNeuron2);

		System.out.println("Neuron 1 - Weights of after traning process: "+perceptronNeuron1.getWeights());
		System.out.println("\n\nNeuron 1 - Number of epochs to learn the patterns : "+perceptronNeuron1.getEpochsCount());


		System.out.println("\n\nNeuron 2 - Weights of Neuron1 after traning process: "+perceptronNeuron2.getWeights());
		System.out.println("\n\nNeuron 2 - Number of epochs to learn the patterns: "+perceptronNeuron2.getEpochsCount());
		
		ArrayList<Integer> entry = Util.readFile("InputData/number0/number0");
		entry.add(0,bias);
		y1 = perceptronNeuron1.classify(entry);
		y2 = perceptronNeuron2.classify(entry);
		twoNeuronsResult = checkNeuronResult(y1,y2);

		System.out.println("\nResult entry number 0: "+twoNeuronsResult);
		//Item c)
		//Need to organize this
		System.out.println("Distorted 0 entrys");
		for(int i=1; i<=10; i++)
		{
			entryNumberDistorted = Util.readFile("InputData/number0/number0_"+i);
			entryNumberDistorted.add(0,bias);
			y1 = perceptronNeuron1.classify(entryNumberDistorted);
			y2 = perceptronNeuron2.classify(entryNumberDistorted);
			twoNeuronsResult = checkNeuronResult(y1,y2);

			System.out.println("Result distorted entry number 0_"+i+": "+twoNeuronsResult);
		}

		entry = Util.readFile("InputData/number1/number1");
		entry.add(0,bias);
		y1 = perceptronNeuron1.classify(entry);
		y2 = perceptronNeuron2.classify(entry);
		twoNeuronsResult = checkNeuronResult(y1,y2);

		System.out.println("\nResult entry number 1: "+twoNeuronsResult);
		//Item c)
		//Need to organize this
		System.out.println("Distorted 1 entrys");
		for(int i=1; i<=10; i++)
		{
			entryNumberDistorted = Util.readFile("InputData/number1/number1_"+i);
			entryNumberDistorted.add(0,bias);
			y1 = perceptronNeuron1.classify(entryNumberDistorted);
			y2 = perceptronNeuron2.classify(entryNumberDistorted);
			twoNeuronsResult = checkNeuronResult(y1,y2);

			System.out.println("Result distorted entry number 1_"+i+": "+twoNeuronsResult);
		}

		for(int i=0; i<6; i++)
		{
			entry = Util.readFile("InputData/number"+i+"/number"+i);
			entry.add(0,bias);
			y1 = perceptronNeuron1.classify(entry);
			y2 = perceptronNeuron2.classify(entry);
			twoNeuronsResult = checkNeuronResult(y1,y2);

			System.out.println("Result entry number "+i+": "+twoNeuronsResult);
		}
	}

	//Test, remove this from here

	public static int checkNeuronResult(int pNeuron1, int pNeuron2)
	{
		if(pNeuron1==1 && pNeuron2==0)
			return 0;
		else if(pNeuron1==0 && pNeuron2==1)
			return 1;
		else
			return -1;
	}

}