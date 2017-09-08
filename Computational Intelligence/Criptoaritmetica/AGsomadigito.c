#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
//------------------------------------------------------------------------------
//Estrutura para representar o individuo, com genes e fitness
typedef struct
{
//                  S E N D M O R Y X1 X2
//genes na posicao: 0 1 2 3 4 5 6 7 8  9

  int genes[10];
  int tamanho;
  int avaliacao;

}individuo;

//------------------------------------------------------------------------------
//DeclaraÃ§Ã£o das funÃ§Ãµes
individuo* criaPopulacaoInicial(int, int, int);
individuo* avaliaPopulacao(individuo[], int,int, int);
individuo* avaliaPopulacaoGenerico(individuo individuos[], int qtdPopulacao, int qtdFilhos, int tamanhoIndividuo);
int erroDigito(int ind1, int ind2, int soma);
int executaTorneio(individuo individuos[], int qtdTour, int qtdPopulacaoInicial);
individuo* novaGeracaoTorneio(individuo[],int, int, int);
individuo* crossOverCiclico(individuo, individuo, int);
individuo* pmx(individuo, individuo, int);
individuo* mutacao(individuo[], int, int, int);
individuo* novaGeracaoRoleta(individuo individuos[], int qtdPopulacaoInicial, int qtdFilhos, int tamanhoIndividuo);
individuo* reinsercaoOrdenada(individuo individuos[], int qtdPopulacao);
individuo* elitismo(individuo individuos[], int qtdPopulacao,int qtdFilhos, int qtd_elitismo);

//CÃ¡lculos

float mediaqtdMelhor(individuo[], int);
float mediaqtdMenorCem(individuo[], int);
float mediaFitPopulacao(individuo[], int);
float mediaFitMenorCem(individuo[], int);
void estatisticas(individuo[], int, float*, float*, float*, float*);

int melhorIndividuo(individuo[], int);
int menorQueCem(individuo[], int);
int mIgualZero(individuo[], int);
int mIgualUm(individuo[], int);

//FunÃ§Ã£o ordenaÃ§Ã£o e auxiliares
int compare (const void *a, const void *b);
int itContains(int* vet, int vetsize, int valor);
void montaString(int tamanhoIndividuo);

//FunÃ§Ã£o de impressÃ£o
void imprimePopulacao(individuo[], int, int, int);
void imprimeMenorQueCem(individuo[], int);
void imprimeMelhor(individuo[], int);
void imprimeMIgualZeroouUm(individuo[], int);


//Variáveis globais
char palavra1[10], palavra2[10], palavra3[10];
int resultante[27];
double taxaDeMutacao = 0.10 + 0.15;
//------------------------------------------------------------------------------
//FunÃ§Ã£o principal
int main()
{
    srand(time(NULL)); //seed
    individuo* individuos; //individuos da populaÃ§Ã£o
    int qtdPopulacaoInicial = 200;
    int qtdFilhos = 0.8 * qtdPopulacaoInicial;
    int qtdElitismo = 0.2 * qtdPopulacaoInicial;
    int tamanhoIndividuo = 10; //colocar dentro da struct depois
    int tamanhoIndividuoValido = 8;
    int i, j, k;
    int contconvergencia=0;
    float convergencia;
  //  float mediaMelhorIndividuos=0.0, mediaMenoresCem=0.0;
  //  float mediaFitIndividuosGeral=0.0, mediaFitMenoresCem=0.0;
   
    int qtdGeracao = 100;
    int qtdExecucao = 1000;

    //Atribuindo palavras da criptoaritmetica
    strcpy(palavra1, "donald");
    strcpy(palavra2, "gerald");
    strcpy(palavra3, "robert");

    montaString(tamanhoIndividuo);
  
    //variaveis de tempo
    clock_t start, end;
    double cpu_time_used;

    start = clock();
    //Roda mil vezes
    for(i=0; i<qtdExecucao; i++)
    {
        individuos = criaPopulacaoInicial(qtdPopulacaoInicial, qtdFilhos, tamanhoIndividuo);
        //individuos = avaliaPopulacaoGenerico(individuos, qtdPopulacaoInicial, qtdFilhos, tamanhoIndividuo);
      // estatisticas(individuos, qtdPopulacaoInicial, &mediaMelhorIndividuos, &mediaMenoresCem, &mediaFitIndividuosGeral, &mediaFitMenoresCem);
        for(j=0; j<qtdGeracao; j++)
        {
          //individuos = novaGeracaoTorneio(individuos, qtdPopulacaoInicial, qtdFilhos, tamanhoIndividuo);
          individuos = novaGeracaoRoleta(individuos, qtdPopulacaoInicial, qtdFilhos, tamanhoIndividuo);

          //Avalia população
        //  individuos = avaliaPopulacaoGenerico(individuos, qtdPopulacaoInicial, qtdFilhos, tamanhoIndividuo);
          //Ordena populacao, para deixar sÃ³ os mais adaptados nas 100 primeiras linhas da matriz
          //qsort(individuos,(qtdPopulacaoInicial+qtdFilhos), sizeof(individuo), compare);
         // individuos = reinsercaoOrdenada(individuos, (qtdPopulacaoInicial+qtdFilhos)); //ReinserçãoOrdenada
         individuos = elitismo(individuos, qtdPopulacaoInicial, qtdFilhos, qtdElitismo);
          //Verifico se jÃ¡ existe individuo com fitness == 0

          if(individuos[0].avaliacao == 0)
          {
            contconvergencia++;
            break;
          }
        }

        
       /* if(individuos[i].avaliacao < 100)
        {
          for(i=0; i<qtdPopulacaoInicial; i++)
          {
           printf("Individuo %d: %d\n", i, individuos[i].avaliacao);
          }
          getchar();
        }*/
     }


    end = clock();

    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;

    printf("Tempo em segundos: %lf \n", cpu_time_used);
    printf("Quantidade de zeros: %d\n", contconvergencia);
    convergencia = (float)contconvergencia/qtdExecucao*100;

    printf("Convergencia:  %.5f%%\n ", convergencia);

    return 0;
}


//------------------------------------------------------------------------------
void montaString(int tamanhoIndividuo)
{
  int i, j, k=0;

  //palavra1, 2 e 3 são variáveis globais
  //resultante = (char*)malloc(sizeof(char)*tamanhoIndividuo+1); //+1 para /0
  memset(resultante, -1, sizeof resultante);

  for(i=0; i<strlen(palavra1); i++)
  {
     if (resultante[palavra1[i] - 'a'] == -1)
      resultante[palavra1[i] - 'a'] = k++;
  }
  //K recebe o i, que sai do for valendo strlen(str1)
  //Compara se na string 2 existe os caracteres da string 1
  for(i=0; i<strlen(palavra2); i++)
  {
     if (resultante[palavra2[i] - 'a'] == -1)
      resultante[palavra2[i] - 'a'] = k++;
  }

  for(i=0; i<strlen(palavra3); i++)
  {
    if (resultante[palavra3[i] - 'a'] == -1)
      resultante[palavra3[i] - 'a'] = k++;
  }

}

int erroDigito(int ind1, int ind2, int soma)
{
	int erro = 0;
	int vaium = 0;
	
	while (ind1 && ind2)
	{
		if ((vaium + ((ind1 % 10) + (ind2 % 10))) % 10  != soma % 10)
			++erro;
		vaium = (vaium + (ind1 % 10) + (ind2 % 10)) / 10;
		ind1 /= 10;
		ind2 /= 10;
		soma /= 10;
	}
	while (ind1)
	{
		if ((vaium + ind1 % 10) % 10 != soma % 10)
			++erro;
		vaium = (vaium + (ind1 % 10)) / 10;
		ind1 /= 10;
		soma /= 10;
	}
	while (ind2)
	{
		if ((vaium + ind2 % 10) % 10 != soma % 10)
			++erro;
		vaium = (vaium + (ind2 % 10)) / 10;
		ind2 /= 10;
		soma /= 10;
	}
	erro += (vaium != soma); //se vaium diferente de soma, (vaium != soma) retorna 1 e soma no erro
	return erro;
}

//------------------------------------------------------------------------------
individuo* avaliaPopulacaoGenerico(individuo individuos[], int qtdPopulacao, int qtdFilhos, int tamanhoIndividuo)
{
  int strInt3=0;
  int strInt1=0;
  int strInt2=0;
  int i,j,k, menor=0, pos=0;
  int vaium=0;
  int cont=0;
  int soma=0;
  char *aux;
  int resultado=0;

  //Pega o tamanho das duas strings que irão somar
  int str1len = strlen(palavra1);
  int str2len = strlen(palavra2);
  int str3len = strlen(palavra3);

  
  //vetor que guarda a soma
  int *vetsoma = (int*)malloc(sizeof(int)*str3len);

  memset(vetsoma, 0, sizeof vetsoma);
  
 // getchar();
  for(k=0; k<(qtdPopulacao+qtdFilhos); k++)
  {
      int ind1 = 0;
      int ind2 = 0;
      int soma = 0;
      
      int t1 = strlen(palavra1);
      int t2 = strlen(palavra2);
      int t3 = strlen(palavra3);
      
      for (i = 0 ; i < t1; ++i)
      	ind1 = ind1 * 10 + individuos[k].genes[resultante[palavra1[i] - 'a']];
      for (i = 0 ; i < t2; ++i)
      	ind2 = ind2 * 10 + individuos[k].genes[resultante[palavra2[i] - 'a']];
      for (i = 0 ; i < t3; ++i)
      	soma = soma * 10 + individuos[k].genes[resultante[palavra3[i] - 'a']];
      	
      individuos[k].avaliacao = erroDigito(ind1, ind2, soma);
  }
  return individuos;
}
//------------------------------------------------------------------------------
individuo* reinsercaoOrdenada(individuo* individuos, int qtdPopulacao)
{
    qsort(individuos, qtdPopulacao, sizeof(individuo), compare);

    return individuos;
}

//------------------------------------------------------------------------------
individuo* elitismo(individuo individuos[], int qtdPopulacaoPais, int qtdFilhos, int qtd_elitismo)
{
    //Ordena só os pais;
    int i;
    qsort(individuos, qtdPopulacaoPais, sizeof(individuo), compare);
    int j=qtd_elitismo;
    //Deixo os "qtd_elitismo" melhores pais e copio os filhos para o restante das posições
    for(i=qtdPopulacaoPais; i<(qtdPopulacaoPais+qtdFilhos); i++ )
    {
       individuos[j++] = individuos[i];
    }

    return individuos;
}
//------------------------------------------------------------------------------
//FunÃ§Ã£o OrdenaÃ§Ã£o
int compare (const void * a, const void * b)
{

  individuo *individuoA = (individuo *)a;
  individuo *individuoB = (individuo *)b;

  return ( individuoA->avaliacao - individuoB->avaliacao );
}

//-----------------------------------------------------------------------------
//FunÃ§Ã£o para criar populacao
individuo* criaPopulacaoInicial(int qtdPopulacaoInicial, int qtdFilhos, int tamanhoIndividuo)
{
    //srand(time(NULL)); //seed
    int i, j, temporaria, aleatorio;
    //Cria um vetor de estrutura de 160 posiÃ§Ãµes
    //Basicamente uma matriz de 160 linhas, pois a estrutura Ã© um vetor de 10 colunas.
    individuo* individuos = (individuo*)malloc((qtdPopulacaoInicial+qtdFilhos)*sizeof(individuo));
    //Inicializa todos os individuos com os valores de suas respectivas posiÃ§Ãµes
    individuos->tamanho = tamanhoIndividuo;
    for(i=0; i<qtdPopulacaoInicial; i++)
    {
      for(j=0; j<tamanhoIndividuo; j++)
      {
        individuos[i].genes[j] = j;
      }
    }

    //Gera os individuos de maneira aleatoria
    for(i=0; i<qtdPopulacaoInicial; i++)
    {
      for(j=0; j<tamanhoIndividuo; j++)
      {
         temporaria = individuos[i].genes[j];
         aleatorio = rand()%tamanhoIndividuo;

         individuos[i].genes[j] = individuos[i].genes[aleatorio];
         individuos[i].genes[aleatorio] = temporaria;
      }
    }

    individuos = avaliaPopulacaoGenerico(individuos, qtdPopulacaoInicial, qtdFilhos, tamanhoIndividuo);

   
    return individuos;
}

//------------------------------------------------------------------------------
//Atribui a avaliaÃ§Ã£o de cada individuo
individuo* avaliaPopulacao(individuo individuos[], int qtdPopulacao, int qtdFilhos, int tamanhoIndividuo)
{
  int money;
  int send;
  int more;
  int i,j;

  for(i=0; i<qtdPopulacao+qtdFilhos; i++)
  {
      //fitness = abs(MONEY-(SEND + MORE))
      money = individuos[i].genes[4]*10000 + individuos[i].genes[5]*1000 + individuos[i].genes[2]*100 + individuos[i].genes[1]*10 + individuos[i].genes[7];
      send = individuos[i].genes[0]*1000 + individuos[i].genes[1]*100 + individuos[i].genes[2]*10 + individuos[i].genes[3];
      more = individuos[i].genes[4]*1000 + individuos[i].genes[5]*100 + individuos[i].genes[6]*10 + individuos[i].genes[1];
      individuos[i].avaliacao = abs(money - (send + more ));
  }
  return individuos;
}

//------------------------------------------------------------------------------
void imprimePopulacao(individuo individuos[], int qtdPopulacao, int qtdFilhos, int tamanhoIndividuo)
{
    int i, j;

    printf("Individuos: \n");
    printf("\n");
    for(i=0; i<qtdPopulacao+qtdFilhos; i++)
    {
      printf("Individuo[%d]: ", i+1);
      for(j=0; j<tamanhoIndividuo; j++)
      {
        printf("%d ", individuos[i].genes[j]);
      }
      printf("%d", individuos[i].avaliacao);
      printf("\n");
    }
}
//------------------------------------------------------------------------------
void imprimeMenorQueCem(individuo individuos[], int qtdPopulacao)
{
  int i, cont=0;

//  printf("Quantidade menor que 100: \n");
  printf("\n");
  for(i=0; i<qtdPopulacao; i++)
  {
    if(individuos[i].avaliacao < 100)
    {
      cont++;
    }
  }
  printf("%d\n", cont);

}

//------------------------------------------------------------------------------
int menorQueCem(individuo individuos[], int qtdPopulacao)
{
  int i, cont=0;

//  printf("Quantidade menor que 100: \n");

  for(i=0; i<qtdPopulacao; i++)
  {
    if(individuos[i].avaliacao < 100)
    {
      cont++;
    }
  }
  return cont;
}

//------------------------------------------------------------------------------
void imprimeMelhor(individuo individuos[], int qtdPopulacao)
{
  int i, melhor = 100000;

//  printf("Melhor individuo: \n");
  printf("\n");
  for(i=0; i<qtdPopulacao; i++)
  {
      if(individuos[i].avaliacao < melhor)
      {
          melhor = individuos[i].avaliacao;
      }
  }
  printf("%d\n",melhor);

}

//------------------------------------------------------------------------------
int melhorIndividuo(individuo individuos[], int qtdPopulacao)
{
  int i, melhor = 100000;

  for(i=0; i<qtdPopulacao; i++)
  {
      if(individuos[i].avaliacao < melhor)
      {
          melhor = individuos[i].avaliacao;
      }
  }
  return melhor;
}

//------------------------------------------------------------------------------
int executaTorneio(individuo individuos[], int qtdTour, int qtdPopulacaoInicial)
{
    int *torneio = (int*)malloc(sizeof(int)*qtdTour);
    int i;
    int melhorIndivTorneio;
    int posicaoMelhorTorneio;
    //Seleciona para torneio

    for(i=0; i<qtdTour; i++)
    {
        torneio[i] = rand()%qtdPopulacaoInicial;
    }

    melhorIndivTorneio = individuos[torneio[0]].avaliacao;
    posicaoMelhorTorneio = torneio[0];
    //Escolhe o melhor do torneio
    for(i=0; i<qtdTour; i++)
    {
        if(individuos[torneio[i]].avaliacao < melhorIndivTorneio)
        {
            melhorIndivTorneio = individuos[torneio[i]].avaliacao;
            posicaoMelhorTorneio = torneio[i];
        }
    }
    return posicaoMelhorTorneio;
}

//------------------------------------------------------------------------------
//Nova geracao utilizando torneio
individuo* novaGeracaoTorneio(individuo individuos[], int qtdPopulacaoInicial, int qtdFilhos, int tamanhoIndividuo)
{
    int qtdTour=3;
    int posicaoMelhorTorneio;
    int i,j,pais=0;
    individuo* paisCrossOver = (individuo*)malloc(sizeof(2*sizeof(individuo)));

    //Enquanto nÃ£o tiver pais suficientes para gerar os filhos continua no laÃ§o
    while(pais < qtdFilhos)
    {
      //Escolhe quem vai participar do torneio
      posicaoMelhorTorneio = executaTorneio(individuos, qtdTour, qtdPopulacaoInicial);
      //Copia os melhores do torneio para as posiÃ§Ãµes dos "filhos"
  //    printf("Atribuindo individuo %d para individuo %d\n", posicaoMelhorTorneio,(qtdPopulacaoInicial+pais));
      for(i=0; i<tamanhoIndividuo; i++)
      {
          individuos[qtdPopulacaoInicial+pais].genes[i] = individuos[posicaoMelhorTorneio].genes[i];
      }
      pais++;
    }

    //TODO Iniciar crossover ciclico
    //Vai atÃ© (Populacao+filhos -1) pq dentro do for estou usando i+1, se nÃ£o daria segmetation fault
    for(i=qtdPopulacaoInicial; i<(qtdPopulacaoInicial+qtdFilhos)-1; i++)
    {
         paisCrossOver = crossOverCiclico(individuos[i], individuos[i+1], tamanhoIndividuo);
       // paisCrossOver = pmx(individuos[i], individuos[i+1], tamanhoIndividuo);
        for(j=0; j<tamanhoIndividuo; j++)
        {
          individuos[i].genes[j] = paisCrossOver[0].genes[j];
          individuos[i+1].genes[j] = paisCrossOver[1].genes[j];
        }
    }

    individuos = mutacao(individuos, qtdPopulacaoInicial, qtdFilhos, tamanhoIndividuo);
    individuos = avaliaPopulacaoGenerico(individuos, qtdPopulacaoInicial, qtdFilhos, tamanhoIndividuo);

    return individuos;
}


//------------------------------------------------------------------------------

individuo* novaGeracaoRoleta(individuo individuos[], int qtdPopulacaoInicial, int qtdFilhos, int tamanhoIndividuo)
{
    int *bilhetes = (int*)malloc(sizeof(int)*qtdPopulacaoInicial);
    int i,j;
    int roleta=0;
    int posicaoRoleta=0;
    int pais=0;
    individuo* paisCrossOver = (individuo*)malloc(sizeof(2*sizeof(individuo)));

    int inverteRoleta = 1000;

    bilhetes[0] = inverteRoleta - individuos[0].avaliacao;

    /*printf("População:\n");

    for(i=0; i<qtdPopulacaoInicial; i++)
    {
      printf("Individuo %d: %d\n", i, individuos[i].avaliacao);
    }
    getchar();*/
    for(i=1; i<qtdPopulacaoInicial; i++)
    {
        bilhetes[i] = bilhetes[i-1] + (inverteRoleta - individuos[i].avaliacao);
        /*if(individuos[i].avaliacao<100)
        {
          printf("avaliacao: %d", individuos[i].avaliacao);
          printf("Calculo roleta:%d\n", inverteRoleta-individuos[i].avaliacao);
          
          printf("Bilhete %d: %d\n", i, bilhetes[i]);
          getchar();
        }*/
    }
   /* printf("\n\n");
    for(i=0; i<qtdPopulacaoInicial; i++)
        printf("Bilhete %d: %d\n", i, bilhetes[i]);*/
    while(pais < qtdFilhos)
    {
      //Gerar um numero aleatorio entre 0 e Ãºltimo valor possivel de bilhetes
      roleta = rand()%bilhetes[qtdPopulacaoInicial-1];
      //printf("Roleta: %d\n", roleta);
      for(i=0; i<qtdPopulacaoInicial; i++)
      {
        if(roleta < bilhetes[i])
        {
            posicaoRoleta = i;
            break;
        }
      }
   /*  printf("roleta: %d\n", roleta);
     printf("Individuo escolhido: %d - Avaliacao: %d\n",posicaoRoleta, individuos[posicaoRoleta].avaliacao);
    //  printf("Posicao roleta: %d\n", posicaoRoleta);
    //  printf("Valor da posicao da roleta: %d\n", individuos[posicaoRoleta].avaliacao);
    getchar();*/
      for(i=0; i<tamanhoIndividuo; i++)
      {
          
          individuos[qtdPopulacaoInicial+pais].genes[i] = individuos[posicaoRoleta].genes[i];
      }

      pais++;
    }

    for(i=qtdPopulacaoInicial; i<(qtdPopulacaoInicial+qtdFilhos)-1; i++)
    {
      // paisCrossOver = crossOverCiclico(individuos[i], individuos[i+1], tamanhoIndividuo);
       paisCrossOver = pmx(individuos[i], individuos[i+1], tamanhoIndividuo);
        for(j=0; j<tamanhoIndividuo; j++)
        {
          individuos[i].genes[j] = paisCrossOver[0].genes[j];
          individuos[i+1].genes[j] = paisCrossOver[1].genes[j];
        }
    }


    individuos = mutacao(individuos, qtdPopulacaoInicial, qtdFilhos, tamanhoIndividuo);

    individuos = avaliaPopulacaoGenerico(individuos, qtdPopulacaoInicial, qtdFilhos, tamanhoIndividuo);
    return individuos;

}


//------------------------------------------------------------------------------
individuo* crossOverCiclico(individuo pai1, individuo pai2,int tamanhoIndividuo)
{
    int i, j;
    int pontodecorte = rand()%tamanhoIndividuo;
  //  printf("O ponto de corte foi na posicao %d\n", pontodecorte);

    //Aloca para dois pais
    individuo* filhos = (individuo*)malloc(sizeof(individuo)*2);

    //Copio para o vetor de filhos
    for(i=0; i<tamanhoIndividuo; i++)
    {
        filhos[0].genes[i] = pai1.genes[i];
        filhos[1].genes[i] = pai2.genes[i];
    }

    //Salvo os valores dos pontos de cortes do pai1 e do pai 2
    int valorPontodeCorteInicial = pai1.genes[pontodecorte];
    int valorPontodeCorte2 = pai2.genes[pontodecorte];

    //Troco esses valores iniciais
    pai2.genes[pontodecorte] = valorPontodeCorteInicial;
    pai1.genes[pontodecorte] = valorPontodeCorte2;

    //A partir da posicao seguinte, varro o vetor procurando quando há ocorrência do valor que foi substituido recentemente no vetor
    for(i=pontodecorte+1 ; (i%10)!= pontodecorte; i++)
    {
      //Se o valor do ponto de corte do segundo pai for igual ao ponto de corte inicial, interrompa crossover pois fechou ciclo
      if(valorPontodeCorteInicial == valorPontodeCorte2)
      {
          break;
      }
      //Verifica se a posicao atual eh igual a que foi anteriormente modificada
      if(pai1.genes[i%10] == pai1.genes[pontodecorte])
      {
          //Se achei, atribuo a posição
          pontodecorte = i%10;
          //Troco valores
          valorPontodeCorte2 = pai2.genes[pontodecorte];
          pai2.genes[pontodecorte] = pai1.genes[pontodecorte];
          pai1.genes[pontodecorte] = valorPontodeCorte2;
      }
    }
    //TODO OTIMIZAR ISSO, ATRIBUINDO PARA FILHOS DUAS VEZES
    //Copio o que teve nos pais modificados para os filhos
    for(i=0; i<tamanhoIndividuo; i++)
    {
        filhos[0].genes[i] = pai1.genes[i];
        filhos[1].genes[i] = pai2.genes[i];
    }


    //Retorna filhos
    return filhos;
}
//------------------------------------------------------------------------------
int itContains(int* vet, int vetsize, int valor)
{
    int i;
    int achou=0;


    for(i=0; i<vetsize; i++)
    {
       if(vet[i] == valor)
       {
          achou=1;
          break;
       }
    }

    return achou;

}
//------------------------------------------------------------------------------
int getPosition(int* vet, int vetsize, int valor)
{
    int i;
    int pos=-1;

    for(i=0; i<vetsize; i++)
    {
       if(vet[i] == valor)
       {
          pos=i;
          break;
       }
    }

    return pos;

}
//------------------------------------------------------------------------------
individuo* pmx(individuo pai1, individuo pai2,int tamanhoIndividuo)
{
    int i, j;
    int comeco = tamanhoIndividuo-1;
    int fim = 0;
    int posicao;
    int valorAtual;
    int trocaIndice;
    int trocaValor;
    int achou;

    int* trocaVetor1;
    int* trocaVetor2;
    int aux;

    //Gera aleatório, começo tem que ser menor que fim
    while(comeco>=fim)
    {
      comeco = rand()%tamanhoIndividuo;
      fim = rand()%tamanhoIndividuo;
    }


    trocaVetor1 = (int*) malloc(sizeof(int)*tamanhoIndividuo);
    trocaVetor2 = (int*) malloc(sizeof(int)*tamanhoIndividuo);
    //Aloca para os dois filhos que serão gerados

    individuo* filhos = (individuo*)malloc(sizeof(individuo)*2);


    ///Crossover apenas a seção que foi sorteada
    for(i=comeco; i<fim; i++)
    {
        aux = pai1.genes[i];
        pai1.genes[i] = pai2.genes[i];
        pai2.genes[i] = aux;
    }

    for(i=comeco; i<fim; i++)
    {
        trocaVetor1[i] = -1;
        trocaVetor2[i] = -1;
    }
    ///Atribui as posições que foram trocadas
    for(i=0; i<(fim-comeco); i++)
    {
        trocaVetor1[i] = pai1.genes[i+comeco];
        trocaVetor2[i] = pai2.genes[i+comeco];
    }


    for(i= fim%tamanhoIndividuo; i>=fim || i<comeco ; i = ((i+1)%tamanhoIndividuo))
    {
        valorAtual = pai1.genes[i];
        achou = itContains(trocaVetor1, (fim-comeco), valorAtual);
        //printf("valor Atual %d Posicao pai1 antes while: %d\n", valorAtual, posicao);
        //Se posicao for diferente de -1 quer dizer que achei
        if(achou)
        {
            //Pega a posicao que deve ser substituida com o valor repetido
            trocaIndice = getPosition(trocaVetor1, (fim-comeco), valorAtual);
            trocaValor = trocaVetor2[trocaIndice];
            while(itContains(trocaVetor1, (fim-comeco), trocaValor))
            {
                trocaIndice = getPosition(trocaVetor1, (fim-comeco), trocaValor);
                if(trocaIndice!=-1)
                    trocaValor = trocaVetor2[trocaIndice];
            }
            pai1.genes[i] = trocaValor;
        }

        valorAtual = pai2.genes[i];

        achou = itContains(trocaVetor2, (fim-comeco), valorAtual);
        //Se posicao for diferente de -1 quer dizer que achei
        if(achou)
        {
            //Pega a posicao que deve ser substituida com o valor repetido
            trocaIndice = getPosition(trocaVetor2, (fim-comeco), valorAtual);

            trocaValor = trocaVetor1[trocaIndice];

            while(itContains(trocaVetor2, (fim-comeco), trocaValor))
            {
                trocaIndice = getPosition(trocaVetor2, (fim-comeco), trocaValor);
                if(trocaIndice != -1)
                    trocaValor = trocaVetor1[trocaIndice];
            }
            pai2.genes[i] = trocaValor;
        }
    }

    for(i=0; i<tamanhoIndividuo; i++)
    {
        filhos[0].genes[i] = pai1.genes[i];
        filhos[1].genes[i] = pai2.genes[i];
    }
  
    return filhos;

}
//------------------------------------------------------------------------------
individuo* mutacao (individuo individuos[], int qtdPopulacao, int qtdFilhos, int tamanhoIndividuo)
{
    int i;


    int individuoComMutacao;
    int pontodeMutacao1;
    int pontodeMutacao2;
    int auxiliar;
    int qtdIndividuosMutacao = ceil(taxaDeMutacao*qtdFilhos);

    //printf("Taxa: %f\n", taxaDeMutacao);


    for(i=0; i<qtdIndividuosMutacao; i++)
    {
        individuoComMutacao = rand()%qtdFilhos + qtdPopulacao;
        pontodeMutacao1 = rand()%tamanhoIndividuo;
        pontodeMutacao2 = rand()%tamanhoIndividuo;


        auxiliar = individuos[individuoComMutacao].genes[pontodeMutacao1];
        individuos[individuoComMutacao].genes[pontodeMutacao1] = individuos[individuoComMutacao].genes[pontodeMutacao2];
        individuos[individuoComMutacao].genes[pontodeMutacao2] = auxiliar;
    }


    return individuos;

}



