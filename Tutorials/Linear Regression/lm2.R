x=c(0,25)
y=3*x+1
data= data.frame(x,y)
ggplot()+geom_line(data=data,aes(x=x,y=y))
y
x=c(rep(1,100),rep(9,100),rep(15,100),rep(22,100))
y=c(rnorm(100,4,10),rnorm(100,28,10),rnorm(100,46,10),rnorm(100,67,10))
dat= data.frame(x,y)
dat
ggplot()+geom_line(data=data,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red",size=7)+
  geom_point(data=dat,aes(x=x,y=y))