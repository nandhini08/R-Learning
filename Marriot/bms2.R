library('ggplot2')
?qplot
qplot(Duration,Title,data=df,fill=Likes)
qplot(data = df,Votes,fill = Title,bins=50)

ggplot(df,aes(x=Duration,y=Title))+
  geom_point(aes(size=Likes,col=Genre))

qplot(data = df,Duration,fill = Title,bins = 30)

ggplot(df,aes(x=Votes,y=Title))+
  geom_point(aes(size=Duration,col=Likes))

ggplot(df,aes(x=Duration,y=Likes))+
  geom_point(aes(size=Votes,col=Genre))

print(df)
library(chron)
t= as.numeric("1106")

time_text_10=gsub("hrs",":",time_text_10)
time_text_10=gsub("mins",":0",time_text_10)
time_text_10=gsub(" ","",time_text_10)
time_text_10=60 * 24 * as.numeric(times(time_text_10))
