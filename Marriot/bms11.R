url_1="https://in.bookmyshow.com/chennai/movies/amarkalam/ET00023237"
mov1=read_html(url_1)


percent_html=html_nodes(mov1,'.__percentage')
percent_text[10]=c(head(html_text(percent_html),1))


votes_html=html_nodes(mov1,'.__votes')
votes1_text=html_text(votes_html)
votes1_text=gsub("\n","",votes1_text)
votes1_text=gsub("\t","",votes1_text)
votes1_text=gsub("votes","",votes1_text)
votes1_text=gsub(" ","",votes1_text)
votes_text[10]=c(head(votes1_text,1))


release_html=html_nodes(mov1,'.__release-date')
release_text[10]=c(html_text(release_html))


time_html=html_nodes(mov1,'.__time')
time_text[10]=c(html_text(time_html))

