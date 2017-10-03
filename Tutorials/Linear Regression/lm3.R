x=c(1,9,15,22)
y=3*x+1
x=c(x,rep(9,100))
x=c(x,rep(15,100))
y=rnorm(100,50,10)
y=c(y,rnorm(100,30,10))
y=c(y,rnorm(100,78,10))
data= data.frame(x,y)
X=c(1,9,15)
Y=c(50,30,78)
means=data.frame(X,Y)

library(ggplot2)
ggplot()+geom_point(data=data,aes(x=x,y=y))+
  geom_point(data=means,aes(x=X,y=Y),size=8,color="pink")
  
  scale_x_continuous(limits =c(0,10),breaks = seq(0,10,2) )+
  scale_y_continuous(limits =c(0,10),breaks = seq(1,10,2)  )
