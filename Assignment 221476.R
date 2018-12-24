#non vectorized
set.seed(123)
N=10
M=10
matrix =replicate(N,rnorm(M))
df=data.frame(matrix)
df
system.time(
  for (i in 1:N)
  {
    for (j in 1:M)
    { 
      df[i,j]=df[i,j]+(10*sin(0.75*pi))
    }
   
  }
)
print(df) 

#vectorized

set.seed(123)
N=10
M=10
matrix =replicate(N,rnorm(M))
df= data.frame(matrix)
system.time(df<-df + 10*sin(0.75*pi))
print(df) 

#non vectorized takes longer than vectorized 

