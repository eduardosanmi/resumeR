##########################################################
library(data.table)
library(timevis)

# generate a random string of 16 characters
randomID <- function() {
  paste(sample(c(letters, LETTERS, 0:9), 16, replace = TRUE), collapse = "")
}

prettyDate <- function(d) {
  suppressWarnings(format(as.POSIXct(gsub("T", " ", d), "%Y-%m-%d %H:%M")))
}

removeMostPunctuation <- function (x, preserve_intra_word_dashes = TRUE) 
{
    rmpunct <- function(x) {
        x <- gsub("#", "\002", x)
        x <- gsub("[[:punct:]]+", "", x)
        gsub("\002", "#", x, fixed = TRUE)
    }
    if (preserve_intra_word_dashes) { 
        x <- gsub("(\\w)-(\\w)", "\\1\001\\2", x)
        x <- rmpunct(x)
        gsub("\001", "-", x, fixed = TRUE)
    } else {
        rmpunct(x)
    }
}


# Tabla Maestra para guardar Experiencia
resumeDT <- data.table(
    id = numeric(),
	start = character(),
	end = character(),
	centro = character(),
	title = character(),
	tags = character(),
	desc = character(),
	comments = character(),
	tipo = character()
)

# Tabla Maestra para guardar datos para timeVis
timeLine <- as.data.table(
              data.frame(
				start = character(0), 
				content = character(0),
				end = character(0),
				id = numeric(0),
				type =  character(0),
				title =  character(0),
				editable = integer(0),
				group = character(0),
				subgroup = character(0),
				className = character(0),
				style = character(0)
				))

# Metodo para Añadir registro a tabla
addEvent <- function(DT, start, end = NA, centro, title,
	                 tags = NA, desc = NA, comments = NA, tipo) {
   id = nrow(DT) + 1
   newROW <- data.table(id, start, end, centro, title, tags, desc, comments, tipo) 
   DT <- rbind(DT, newROW)
   DT[]
}

# Metodo para añadir registros a timeVis
addTimeEvent <- function(timeLine, resumeDT,
                         style = "line-height: 0.375;") {
						 
    if( resumeDT$tipo == "edu") {
	   resumeDT$start <- resumeDT$end
	   resumeDT$end <- NA
	   resumeDT$centro <- resumeDT$title
    }
	if( resumeDT$tipo == "pub") {
	   resumeDT$centro <- resumeDT$title
    }
	timeLine <- rbind(fill = TRUE, timeLine, 
	   list(content = resumeDT$centro, 
			start = resumeDT$start, end = resumeDT$end , 
			group = resumeDT$tipo,
			style =  style  ))
    timeLine[]
}

addTagEvent <- function(timeLine, resumeDT,
                         style = "font-size: 75%;") {
						 
    if( resumeDT$tipo == "edu") {
	   resumeDT$start <- resumeDT$end
	   resumeDT$end <- NA
	   resumeDT$centro <- resumeDT$title
    }
	
	timeLine <- rbind(fill = TRUE, timeLine, 
	   list(content = resumeDT$tags, 
			start = resumeDT$start, end = resumeDT$end , 
			group = resumeDT$tipo,
			type = "point",
			style =  style  ))
    timeLine[]
}



redraw <- function (id, options) 
{
    method <- "redraw"
    callJS()
}
environment(redraw) <- asNamespace('timevis')


