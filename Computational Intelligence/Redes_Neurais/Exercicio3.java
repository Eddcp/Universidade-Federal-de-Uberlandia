import java.util.*;
import java.io.*;

public class Exercicio3 {
	public static void main(String[] args){
		int bias = 1;
		double learningRate = 1;
		boolean isRandom = false;
		int sizeOfEntry=0;
		int numberOfNeurons = 6;
		int numberOfEntrysDistorted = 10;
		int y[] = {0,0,0,0,0,0};
		char letters[] = {'A','E','T','C','H','N'};

		//Expected outputs: pattern 0 to pattern 5;
		int expectedOutputs[][] = {{1,0,0,0,0,0},
								   {0,1,0,0,0,0},
								   {0,0,1,0,0,0},
								   {0,0,0,1,0,0},
								   {0,0,0,0,1,0},
								   {0,0,0,0,0,1}};
		
		int checkPerceptronResult=0;

		//Create array of samples
		ArrayList<ArrayList<Integer>> samples = new ArrayList<ArrayList<Integer>>();

		for(int i=0; i<numberOfNeurons; i++)
			samples.add(Util.readFile("InputData/number"+i+"/number"+i));

		//Add bias in the first position and shift the subsequents to the right
		for(int i=0; i<numberOfNeurons; i++)
			samples.get(i).add(0,bias);

		//Could be any entry
		sizeOfEntry=samples.get(0).size();

		//Start perceptron
		ArrayList<Perceptron> perceptron = new ArrayList<Perceptron>();
		for(int i=0; i<numberOfNeurons; i++)
			perceptron.add(new Perceptron (learningRate, sizeOfEntry, isRandom));
		
		//Training
		for(int i=0; i<numberOfNeurons; i++)
			perceptron.get(i).train(samples,expectedOutputs[i]);

		for(int i=0; i<numberOfNeurons; i++)
		{	
			System.out.println();
			System.out.println("Neuron"+(i+1)+" - Weights of after traning process: "+perceptron.get(i).getWeights());
			System.out.println();
			System.out.println("Neuron"+(i+1)+" - Number of epochs to learn the patterns : "+perceptron.get(i).getEpochsCount());
		}
		
		//Numbers 0 to 5		
		ArrayList<ArrayList<Integer>> entrys = new ArrayList<ArrayList<Integer>>();
		for(int i=0; i<numberOfNeurons; i++)
		{
			entrys.add(Util.readFile("InputData/number"+i+"/number"+i));
			entrys.get(i).add(0,bias);
		}
		//Classify number 0 to 5
		for(int i=0; i<numberOfNeurons; i++)
		{
			for(int j=0; j<numberOfNeurons; j++)
			{
				y[j] = perceptron.get(j).classify(entrys.get(i));
			}
			checkPerceptronResult = checkNeuronResult(y,numberOfNeurons);
			System.out.println("Result entry number "+i+": "+checkPerceptronResult);
		}

		//Numbers distorted
		ArrayList<ArrayList<Integer>> entrysDistorted = new ArrayList<ArrayList<Integer>>();
		for(int i=0; i<numberOfNeurons; i++)
			for(int j=1; j<=numberOfEntrysDistorted; j++)
			{
				entrysDistorted.add(Util.readFile("InputData/number"+i+"/number"+i+"_"+j));
			}
			
		for(int i=0; i<numberOfNeurons*numberOfEntrysDistorted; i++)
			entrysDistorted.get(i).add(0,bias);

		//Classify numbers distorted
		for(int i=0; i<numberOfNeurons*numberOfEntrysDistorted; i++)
		{
			for(int j=0; j<numberOfNeurons; j++)
				y[j] = perceptron.get(j).classify(entrysDistorted.get(i));

			checkPerceptronResult = checkNeuronResult(y,numberOfNeurons);
			System.out.println("Result entry number "+i/10+"_"+(i%10 +1)+": "+checkPerceptronResult);
		}

		//letters
		entrys = new ArrayList<ArrayList<Integer>>();
		for(int i=0; i<numberOfNeurons; i++)
		{
			entrys.add(Util.readFile("InputData/differentpatterns/letter"+letters[i]));
			entrys.get(i).add(0,bias);
		}
		
		//Classify letters A,E,T,H,C,N
		for(int i=0; i<numberOfNeurons; i++)
		{
			for(int j=0; j<numberOfNeurons; j++)
			{
				y[j] = perceptron.get(j).classify(entrys.get(i));
			}
			checkPerceptronResult = checkNeuronResult(y,numberOfNeurons);
			System.out.println("Result letter "+letters[i]+": "+checkPerceptronResult);
		}
	}

	//Test, remove this from here

	public static int checkNeuronResult(int pNeuron[], int numberOfNeurons)
	{
		int pos=0;
		int cont=0;

		for(int i=0; i<numberOfNeurons; i++)
		{
			if(pNeuron[i]==1)
			{
				pos=i;
				cont++;
			}
		}

		if(cont==1)
		{
			if(pos==0) return 0;
			if(pos==1) return 1;
			if(pos==2) return 2;
			if(pos==3) return 3;
			if(pos==4) return 4;
			if(pos==5) return 5;
		}
		
		
		return -1;
	}

}