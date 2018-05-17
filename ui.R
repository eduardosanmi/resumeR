library(timevis)

source("ui-helpers.R")

fluidPage(
  title = "resume",
  tags$head(
    tags$link(href = "style.css", rel = "stylesheet"),

    # Favicon
    # tags$link(rel = "shortcut icon", type="image/x-icon", href=""),

    # Facebook OpenGraph tags
    tags$meta(property = "og:title", content = share$title),
    tags$meta(property = "og:type", content = "website"),
    tags$meta(property = "og:url", content = share$url),
    tags$meta(property = "og:image", content = share$image),
    tags$meta(property = "og:description", content = share$description),

    # Twitter summary cards
    tags$meta(name = "twitter:card", content = "summary"),
    tags$meta(name = "twitter:site", content = paste0("@", share$twitter_user)),
    tags$meta(name = "twitter:creator", content = paste0("@", share$twitter_user)),
    tags$meta(name = "twitter:title", content = share$title),
    tags$meta(name = "twitter:description", content = share$description),
    tags$meta(name = "twitter:image", content = share$image)
  ),
  div(id = "header",
    div(id = "subtitle", 
	"Eduardo San Miguel", 
	HTML("&bull;"), 
	"Analitycs & Data Science"    
	)
  ),
  tabsetPanel(
    id = "mainnav",
    tabPanel(
      div(icon("sliders"), "interactive"),
      timevisOutput("timelineInteractive"),
      div(
        id = "samplecode",
        fluidRow(
          column(
            7,
            div(class = "codeformat0", textOutput("selected1", inline = TRUE)),
			div(class = "codeformatDate", textOutput("selectedDate", inline = TRUE)),
			div(class = "codeformatPlace", textOutput("selected3", inline = TRUE)),
			div(class = "codeformatDesc", uiOutput("longDesc"), inline = TRUE)
          ),
          column(
            5,
            div(class = "codeformat",
                plotOutput("wordcloud", height = "350px"))
          )
        )
      ),
      div(class = "sourcecode",
	    downloadButton("downloadData", "Download CV")
        , "Contact me at",
        tags$a(href = "",
               "eduardo.san.miguel.martin at gmail dot com")
      )
    )
  )
)


