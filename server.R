library(timevis)
library(data.table)
library(text2vec)
library(wordcloud)

# source("sampleData.R")
# source("resumeR/functions.R")
# source("resumeR/data.R")

	maxFreq <- 3
	minFreq <- 1.25
	maxWords <- 60
	rotPer <- .01

function(input, output, session) {

source("resumeR/functions.R")
source("resumeR/data.R")

  output$timelineInteractive <- renderTimevis({
    timevis( data = timeLine, timeLineGroups, fit = TRUE,
	    , width = "100%", showZoom = FALSE
        , option = list(# maxHeight = 400, minHeight = 400,
		                autoResize = FALSE, order = htmlwidgets::JS("function (a, b) { return a.id - b.id; }"))
	   ) %>% setWindow("1999-10",substr(Sys.Date(),1,7)) %>% redraw() %>% setSelection(resumeDT[end == as.character(Sys.Date()), id]) 
  })

  timelineInteractive_selected <- reactive({
	if (!isTruthy(as.integer(input$timelineInteractive_selected) > 0)) {
	  nrow(resumeDT)
	} else {
      as.integer(input$timelineInteractive_selected)	
	}
  })  

  timelineInteractive_selected_dates <- reactive({
    timelineInteractive_selected()
	dates2show <- resumeDT[ id == timelineInteractive_selected(), c(start, end) ]
	tipo2show <- resumeDT[ id == timelineInteractive_selected(), tipo ]
	if (tipo2show == "res") {dates2show <- c("",NA)}
	if ( !is.na(dates2show[2])) {
	  dates2show <- paste(dates2show, collapse = " to ")
	} else {
	  dates2show <- dates2show[1]
	}
  }) 
  
  output$selected <- renderText(
    paste(resumeDT[ id == timelineInteractive_selected(), tags ], collapse = " ")
  )
  output$selected1 <- renderText(
    paste(resumeDT[ id == timelineInteractive_selected(), title ], collapse = " ")
  )  
  output$selected2 <- renderText(
    paste(resumeDT[ id == timelineInteractive_selected(), desc ], collapse = " ")
  )  
  output$selected3 <- renderText(
    paste(resumeDT[ id == timelineInteractive_selected(), centro ], collapse = " ")	
  )    
  output$selectedDate <- renderText(
    paste(timelineInteractive_selected_dates())	
  ) 
  output$longDesc <- renderUI({   
    HTML(paste(resumeDT[ id == timelineInteractive_selected(), desc ], collapse = " "))
  }) 
  
  output$window <- renderText(
    paste(prettyDate(input$timelineInteractive_window[1]),
          "to",
          prettyDate(input$timelineInteractive_window[2]))
  )
  output$table <- renderTable({
    data <- input$timelineInteractive_data
    data$start <- prettyDate(data$start)
    if(!is.null(data$end)) {
      data$end <- prettyDate(data$end)
    }
    data
  })
  output$selectIdsOutput <- renderUI({
    selectInput("selectIds", tags$h4("Select items:"), input$timelineInteractive_ids,
                multiple = TRUE)
  })
  output$removeIdsOutput <- renderUI({
    selectInput("removeIds", tags$h4("Remove item"), input$timelineInteractive_ids)
  })

  observeEvent(input$fit, {
    fitWindow("timelineInteractive")
  })
  observeEvent(input$setWindowAnim, {
    setWindow("timelineInteractive", "2016-01-07", "2016-01-25")
  })
  observeEvent(input$setWindowNoAnim, {
    setWindow("timelineInteractive", "2016-01-07", "2016-01-25",
              options = list(animation = FALSE))
  })
  observeEvent(input$center, {
    centerTime("timelineInteractive", "2016-01-23")
  })
  observeEvent(input$focus2, {
    centerItem("timelineInteractive", 4)
  })
  observeEvent(input$focusSelection, {
    centerItem("timelineInteractive", timelineInteractive_selected())
  })
  observeEvent(input$selectItems, {
    setSelection("timelineInteractive", input$selectIds,
                 options = list(focus = input$selectFocus))
  })
  
  output$wordcloud <- renderPlot({
    colores <- colorRampPalette(c(rgb(.0,.65,.45,.55), rgb(.1,.25,.5,.75)), alpha = TRUE)(5)
	idSelected <- timelineInteractive_selected()
	tagsSelected <- unlist(strsplit(resumeDT[ idSelected,tags],",")) 
	
	op <- par(mar = rep(0, 4))
	
	if (idSelected == nrow(resumeDT)) {
	   tagsSelected <- unlist(strsplit(resumeDT[ tipo == "res", tags],",")) 
	   maxFreq <- 2.15
	   minFreq <- .5
       maxWords <- 100
	   rotPer <- .1
	}   
	
    tagsSelected <- rep(tagsSelected, c(length(tagsSelected):1))
	content2show <- tagsSelected # gsub( "-","_", tagsSelected)
	it_train = itoken(content2show, 
				 preprocessor = removeMostPunctuation,
				 progressbar = FALSE)
	vocab = create_vocabulary(it_train, 
			  stopwords = c("a","y","o","el","la","los","las","un","una","unos","unas","de","del",
			  "en","in","and",""))
			  
	# content2show <- vocab$vocab[order(-terms_counts), terms]
	# contentFreq <- vocab$vocab[order(-terms_counts), terms_counts]
	
    vocab <- data.table(vocab)
    content2show <- vocab[order(-term_count), term]	
    contentFreq <- vocab[order(-term_count), term_count]	
	
    wordcloud(content2show, contentFreq, scale=c(maxFreq, minFreq), family = c("mono"), font = 2,
              min.freq = 1, max.words = maxWords, rot.per = rotPer, random.order = FALSE,
              colors = colores, use.r.layout = TRUE )		  
  })  

  output$downloadData <- downloadHandler(
    filename = "Eduardo_San_Miguel_CV_2017.pdf",
    content = function(file) {
      file.copy("www/Eduardo_San_Miguel_CV_2017.pdf", file)
    }
  )  

  
}
