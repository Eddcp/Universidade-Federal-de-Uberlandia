x<-c(1,4,6)
y<-c(0,1.386294, 1.791759)

#Função que interpola pelo método de Newton
Newton <- function(x1)
{
	coef <- y
	#print(coef)
	for (k in 1:(length(x)-1))
	{
		#cat("O k no primeiro for eh ", k,"\n")
		for(i in seq(length(x),k+1,-1))
		{
			#print (i)
			coef[i] <- (coef[i] - coef[i-1])/(x[i] - x[i-k])
			#cat("O i no segundo for eh ", i,"\n")
			#print(k)
		}
	}
	R <- coef[length(x)]

	for(i in seq(length(x)-1,1,-1))
	{
		R <- R*(x1-x[i])+coef[i]
	}

	return (R)
}