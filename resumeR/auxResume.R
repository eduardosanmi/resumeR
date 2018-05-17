timeLineGroups <- data.frame(id = NULL, content = NULL, subgrouporder = NULL, className = NULL)
timeLineGroups <- rbind(timeLineGroups, data.frame(id = "edu", content = "Education", subgrouporder = 1, className = "edu"))
timeLineGroups <- rbind(timeLineGroups, data.frame(id = "pub", content = "Publications", subgrouporder = 2, className = "pub"))
timeLineGroups <- rbind(timeLineGroups, data.frame(id = "job", content = "Experience", subgrouporder = 3, className = "job"))

resumeDT$centro <- iconv(resumeDT$centro, "utf8","utf8")
resumeDT$tags <- iconv(resumeDT$tags, "utf8","utf8")
resumeDT$title <- iconv(resumeDT$title, "utf8","utf8")
resumeDT$tags <- iconv(resumeDT$tags, "utf8","utf8")
resumeDT$desc <- iconv(resumeDT$desc, "utf8","utf8")


for (i in 1:nrow(resumeDT)) { 
  # timeLine <- addTagEvent( timeLine, resumeDT[i,])
  timeLine <- addTimeEvent( timeLine, resumeDT[i,])  
}

# probar background
# Muted Minimal (rojo, azul, gris, blanco)
# DUSTY #96858f 150,133,143
# LAVENDAR #6d7993 109,121,147
# OVERCAST #144,153,162
# PAPER #D5D5D5 213,213,213

timeLine <- rbind(fill = TRUE, timeLine, 
 list(content = "", 
 start = "1975-10",#resumeDT[,min(end, na.rm = T)],
 end = resumeDT[,max(end, na.rm = T)] , 
 group = "edu",
 type = "background",
 style =  "background-color: rgba(150,133,143,.15);"  ))

timeLine <- rbind(fill = TRUE, timeLine, 
 list(content = "", 
 start = "1975-10", # resumeDT[,min(end, na.rm = T)],
 end = resumeDT[,max(end, na.rm = T)] , 
 group = "pub",
 type = "background",
 style =  "background-color: rgba(109,121,147,.15);"  ))	

timeLine <- rbind(fill = TRUE, timeLine, 
 list(content = "", 
 start = "1975-10", #resumeDT[,min(end, na.rm = T)],
 end = resumeDT[,max(end, na.rm = T)] , 
 group = "job",
 type = "background",
 style =  "
  background: rgba(145,0,145,.5);
  background: -webkit-linear-gradient(left, rgba(109,121,147,.25) , rgba(109,121,147,.35)); 
  background: -o-linear-gradient(right, rgba(109,121,147,.25), rgba(109,121,147,.35)); 
  background: -moz-linear-gradient(right, rgba(109,121,147,.25), rgba(109,121,147,.35)); 
  background: linear-gradient(to right, rgba(109,121,147,.25) , rgba(109,121,147,.35));			 
			 "  ))

#setorder(timeLine, start)
timeLine[,id := 1:.N]

# Generamos entrada Resumen
it_train = itoken(resumeDT$tags, 
				 preprocessor = removeMostPunctuation,
				 progressbar = FALSE)
				 
vocab = create_vocabulary(it_train, 
		  stopwords = c("a","y","o","el","la","los","las","un","una","unos","unas","de","del",
			  "en","in","and",""))

vocab <- data.table(vocab)
content2show <- vocab[order(-term_count), term]	
# content2show <- vocab$vocab[order(-terms_counts), terms]

resumeDT <- addEvent(resumeDT, 
	start = as.character(Sys.Date()), 
	end = NA, 
	centro = "", 
	title = "BIG DATA & ANALYTICS PROFESSIONAL",
	tags = paste(content2show, collapse = ", "),
	desc = "
<p> &bull;
Result-oriented, hands-on <b>data science professional</b>, 
with a successful record of accomplishments in <b>Machine Learning, 
Text Mining, Business Intelligence and Analytics </b> projects, 
as well as in academic research.
</p>
<p> &bull;
Over <b>fifteen years of professional experience</b> in diversified industry fields,
 covering data modeling, data mining, text mining, machine learning and NLP research & development.
 An experience that not only leads to <b>enriched industry understanding</b>, but also aids exchange of ideas, 
 helping me build a holistic perspective.
</p>
<p> &bull;
Major strengths include <b>strong leadership and capacity to work as a team player</b>, 
as well as <b>excellent communicational and technical skills</b>.
</p>
<em>* Select a label in the timeline to see its details </em>
",
	comments = " ",
	tipo = "res"
)
