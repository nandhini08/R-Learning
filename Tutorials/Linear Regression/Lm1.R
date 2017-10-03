x=rnorm(100,10,5)
y=3*x+1
means=data.frame(x,y)

x=c(-5,25)
y=3*x+1
line=data.frame(x,y)
x=means$x 
x
y=sapply(x,function(x) rnorm(1,3*x+1,10))
y
dat=data.frame(x,y)
ggplot()+
  scale_x_continuous(limits=c(-10,30))+
  scale_y_continuous(limits=c(-20,80))+
  geom_point(data=dat,aes(x=x,y=y))