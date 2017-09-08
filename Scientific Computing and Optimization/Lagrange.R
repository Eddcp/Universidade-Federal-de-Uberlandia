Lagrange <- function(x1,n)
{
	R <- 0
	for (i in 1:n)
	{
		c <- 1
		d <- 1
		for (j in 1:n)
		{
			if (j!=i)
			{
				c <- c * (x1 - x[j])
				d <- d * (x[i] - x[j])
			}
		}
		R <- R + y[i] * c/d
	}
	return (R)
}

