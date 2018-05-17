path2resumeR <- "C:\\Users\\esanmiguel\\Documents\\Proyectos\\Personal\\CV\\resumeR\\shinyapp\\resumeR"
setwd(path2resumeR)
source("functions.R")
source("data.R")

# for (i in 1:nrow(resumeDT)) { 
  # timeLine <- addTagEvent( timeLine, resumeDT[i,])
  # timeLine <- addTimeEvent( timeLine, resumeDT[i,])  
# }

# #setorder(timeLine, start)
# timeLine[,id := 1:.N]

timevis( data = timeLine, timeLineGroups, width = "100%"
        , option = list(order = htmlwidgets::JS("function (a, b) { return a.id - b.id; }"))
	   )


# runApp("C:\\Users\\esanmiguel\\Documents\\Proyectos\\Personal\\CV\\resumeR\\shinyapp\\.")
# https://www.l2f.inesc-id.pt/~david/wiki/pt/extensions/vis/docs/timeline.html
	  