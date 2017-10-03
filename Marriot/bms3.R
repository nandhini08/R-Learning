url_1="https://in.bookmyshow.com/chennai/movies/sathura-adi-35/ET00060348"
#
mov1=read_html(url_1)

percent_html=html_nodes(mov1,'.__percentage')
percent_text=html_text(percent_html)
percent_text[1]=c(head(percent_text,1))


votes_html=html_nodes(mov1,'.__votes')
votes1_text=html_text(votes_html)
votes1_text=gsub("\n","",votes1_text)
votes1_text=gsub("\t","",votes1_text)
votes1_text=gsub("votes","",votes1_text)
votes1_text=gsub(" ","",votes1_text)
votes_text=c(head(votes1_text,1))


release_html=html_nodes(mov1,'.__release-date')
release_text=html_text(release_html)
release_text[1]=c(release_text)


time_html=html_nodes(mov1,'.__time')
time_text=html_text(time_html)
time_text[1]=c(time_text)



