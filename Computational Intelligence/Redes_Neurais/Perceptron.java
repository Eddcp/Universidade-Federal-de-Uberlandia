import java.util.*;

public class Perceptron {
	
	private int sizeOfEntry;
    private ArrayList<Double> weights;
    private int epochsCount;
    private double learningRate;
    private static int maxEpochs=1000;
    private boolean isRandom;

    public Perceptron(double learningRate,int sizeOfEntry, boolean random)
    {
    	this.sizeOfEntry = sizeOfEntry;
    	this.epochsCount = 0;
    	this.learningRate = learningRate;
    	this.isRandom = random;
    	this.weights = this.createWeights(sizeOfEntry);
    }

    //Getters and setters
    public int getSizeOfEntry()
    {
    	return this.sizeOfEntry;
    }

    public ArrayList<Double> getWeights()
    {
		return this.weights;
    }

    public void setWeights(ArrayList<Double> weights)
    {
    	this.weights = weights;
    }

    public int getEpochsCount()
    {
    	return this.epochsCount;
    }


    public ArrayList<Double> createWeights(int qtyWeights){
    	ArrayList<Double> weights = new ArrayList<Double>();
    	if(this.isRandom)
    	{
    		Random r = new Random();;
    		double rangeMin = -1.0;
    		double rangeMax = 1.0;
    		int randomNumber;
    		for(int i=0; i<qtyWeights; i++)
    		{
                //Multiply the random (0,1) with the size of the range (-1 to 1 = 2)
                //and then sum to the rangeMin
    			weights.add(rangeMin + (rangeMax - rangeMin)*r.nextDouble());
    			
    		}
    	}
    	else
    		for(int i=0; i<qtyWeights; i++)
    			weights.add(0.0);

    	return weights;
    }

    public void train(ArrayList<ArrayList<Integer>> samples, int expectedOutput[])
    {
    	int output;
    	int error=0;
    	int totalError;
    	//this.setWeights(this.createWeights(this.weights.size()));

    	while(this.epochsCount < this.maxEpochs)
    	{
	    	totalError = 0;
	    	//Iterate throw samples- for example (exercise1: samples=[0,1])
	    	for(int i=0; i<samples.size(); i++)
	    	{
	    		//The index i is for each sample, each sample has an expectedoutput
	    		output = this.execute(samples.get(i));
    			error = expectedOutput[i] - output;
    			correctWeight(error, samples.get(i));
    			totalError += Math.abs(error);	
	    	} 	
	    	this.epochsCount++;
	    	if(totalError==0)	
	    		break;
	    }
    }

    public int classify(ArrayList<Integer> testData)
    {
        int output = execute(testData);
        return output;
    }

    public void correctWeight(int error, ArrayList<Integer> sample)
    {

    	double correctedWeight;
    	
    	//Formula: w = w + nexi 
    	for(int i=0; i<this.weights.size();i++)
    	{		
    	   correctedWeight = this.weights.get(i) + (this.learningRate * error * sample.get(i));
    	   this.weights.set(i, correctedWeight); 
    	}	

    }

    public int execute(ArrayList<Integer> entry)
    {
    	double sum  = this.sumActivation(entry);
    	int output = this.stepFunction(sum);

    	return output;
    }

    public double sumActivation(ArrayList<Integer> entry)
    {
    	
    	double sum=0.0;
    
    	for(int i=0; i<entry.size(); i++)
    		sum += entry.get(i)*this.weights.get(i);		

    	return sum;
    }

    public int stepFunction(double net)
    {

    	if(net<=0) return 0;
    	else return 1;
    }

}