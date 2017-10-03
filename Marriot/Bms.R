install.packages("rvest")
library(rvest)
url="https://in.bookmyshow.com/chennai/movies/"
webpage=read_html(url)

title_html=html_nodes(webpage,'.href')
title_text=html_text(title_html)
title_text=head(title_text,10)

language_html=html_nodes(webpage,'.__language')
language_text=html_text(language_html)
language_text=head(language_text,10)

genre_html=html_nodes(webpage,'.__genre')
genre_text=html_text(genre_html)
genre_text=head(genre_text,10)

percent_text=gsub("%","",percent_text)

percent_text_10=as.numeric(head(percent_text,10))
votes_text_10=as.numeric(head(votes_text,10))
votes_text = gsub(",","",votes_text)
release_text_10=head(release_text,10)
time_text_10=head(time_text,10)

df=data.frame(Title=title_text,Language = language_text,Genre=genre_text,Votes=votes_text_10,Likes=percent_text_10,Duration=time_text_10,Release_date=release_text_10)

print(df)
hist(df)
rm(df)
rm(list=ls())
