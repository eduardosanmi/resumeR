timeLineGroups <- data.frame(id = NULL, content = NULL, subgrouporder = NULL, className = NULL)

timeLineGroups <- rbind(timeLineGroups, data.frame(id = "edu", content = "Education", subgrouporder = 1, className = "edu"))
timeLineGroups <- rbind(timeLineGroups, data.frame(id = "pub", content = "Publications", subgrouporder = 2, className = "pub"))
timeLineGroups <- rbind(timeLineGroups, data.frame(id = "job", content = "Experience", subgrouporder = 3, className = "job"))

# 1995-2000 Psy Degree (Spc. Experimental Psychology)
resumeDT <- addEvent(resumeDT, 
	start = "1995-09", 
	end = "2000-07", 
	centro = "Universidad Complutense", 
	title = "Master Degree Psychology",
	tags = " statistics, machine-learning, AI, neural-networks, SPSS",
	desc = 
	" Degree Especialization in <b>Experimental Psychology</b> and <b>Cognitive Science:</b>
<p> &bull; Covered fields: <b>Statistics, Artificial Intelligence, Machine Learning, Signal Processing</b>
<p> &bull; Final Grade: <b>Sobresaliente</b>
",
	comments = "Calificacion final: Sobresaliente",
	tipo = "edu"
)

# 2000-2002 Doctorado Ciencias Cognitivas. Interesado en Machine Learning y Knowledge Representation
resumeDT <- addEvent(resumeDT, 
	start = "2000-09", 
	end = "2002-07", 
	centro = "Universidad Complutense", 
	title = "Doctorado Ciencia Cognitiva",
	tags = "AI, neural-networks, machine-learning, nlp, text-mining, data-mining, visualization",
	desc = 
	" <em>DEA Doctorado</em> Ciencias Cognitivas <b>(Suficiencia Investigadora)</b>  
<p> &bull; Developing my <b>R+D</b> skills in <b>Artificial Neural Nets, Artificial Intelligence, Machine Learning, Natural Language Processing, Knowledge Representation</b> ",
	comments = "Calificacion final: Sobresaliente",
	tipo = "edu"
)

# 2002 Curso de Especialización: Herramientas Computacionales Avanzadas y Redes Neuronales Aplicadas al Análisis Estadistico En El Ambito Empresarial. 
# Total horas del curso: 66 horas. Organizado por la Universidad Carlos III y el Insituto Madrileño para la Formación. 
resumeDT <- addEvent(resumeDT, 
	start = "2002-10", 
	end = "2002-11", 
	centro = "Universidad Carlos III", 
	title = "Machine Learning Especialization",
	tags = "business, analytics, machine-learning, neural-networks, data-mining",
	desc = 
	"<b>Herramientas Computacionales Avanzadas y Redes Neuronales Aplicadas al Análisis Estadistico en el Ambito Empresarial.</b>
<p> &bull; Organized by Universidad Carlos III and Insituto Madrileño para la Formación 
<p> &bull; <b>R Language</b> based course covering machine learning methods used in business analytics: 
<b> Principal Component Analysis (PCA), Linear Models, Segmentation Models, Support Vector Machines, Decision trees, Neural Nets</b>
",
	comments = "",
	tipo = "edu"
)

# 2003-2004 Master PRL (Seguridad, Higiene, Ergonomía) Interesado en Predicción y Optimización de Procesos
resumeDT <- addEvent(resumeDT, 
	start = "2003-09", 
	end = "2004-06", 
	centro = "Instituo Madrileño de Formación", 
	title = "Master Degree PRL",
	tags = "PRL, Ergonomy, Optimization",
	desc = 
	" Master Degree Occupational Risk Prevention (PRL).
<p> &bull; Especialization: <b>Industrial Security, Environmental Health and Ergonomy</b>
<p> &bull; Master Degree Final Project at <b>Metro de Madrid</b> Prevención de Riesgos Laborales Department ",
	comments = "Calificacion final: Sobresaliente",
	tipo = "edu"
)

# Marzo 2004 - Febrero 2006 Desarrollo Humano e IA
resumeDT <- addEvent(resumeDT, 
	start = "2004-03", 
	end = "2006-02", 
	centro = "dhIA SL", 
	title = "MACHINE LEARNING DEVELOPER",
	tags = "text-mining, nlp, intelligent-bots, R, python, data-science, machine-learning, neural-networks, visualization, c++, algorithms, AI, cognitive-systems",
	desc = 
	" 
<p> &bull; Developing Algorithms for <b>Automatic Text Clasification & Categorization</b> and <b>Sentiment Analysis</b>
<p> &bull; Developing AI Applications: <b>Intelligent Personal Assistant, 3D Semantic Knowledge Navigator </b>
<p> &bull; By Applying <b>machine learning, data mining, nlp</b> and <b>text mining</b> methods:
<b>POS tagging,
Latent Semantic Indexing/Analysis</b> (Singular Value Decomposition Trick), 
<b>Segmentation, hierarquical clusterization, 
Neural Networks, 
AIML</b> (Artificial Inteligence Markup Language), 
<b>ALICE</b> (Artificial Linguistic Internet Computer Entity)",
	comments = " ",
	tipo = "job"
)

# XXIV INTERNATIONAL AESLA CONFERENCE. 2006
# http://www.uned.es/aesla2006/documentos/Programa_definitivo.pdf
# Corpus linguistics, computational linguistics and linguistic engineering
resumeDT <- addEvent(resumeDT, 
	start = "2006-03", 
	end = NA, 
	centro = "UNED", 
	title = "AESLA XXIV",
	tags = "nlp, text-mining, data-science, machine-learning, visualization, R",
	desc = 
	" 
<em>Herramienta de representación tridimensional de conocimiento basada en la relación de LSA extraída a partir de corpus.</em>
<b>XXIV INTERNATIONAL AESLA CONFERENCE.</b> Corpus linguistics, computational linguistics and linguistic engineering. Madrid, 2006.
<link>http://www.uned.es/aesla2006/documentos/Programa_definitivo.pdf</link>",
	comments = "",
	tipo = "pub"
)

# 3D Knowledge Retrieval
# The R User Conference. 2006
# http://www.r-project.org/user-2006/index.html
resumeDT <- addEvent(resumeDT, 
	start = "2006-06", 
	end = NA, 
	centro = "Wirtschaftsuniversität Wien", 
	title = "useR 2006",
	tags = "visualization, R, machine-learning, text-mining, nlp, data-science",
	desc = 
	"
<em>3D Knowledge Retrieval.</em>
<b>THE SECOND INTERNATIONAL R USER CONFERENCE</b>. Viena, 2006.
<link>https://www.r-project.org/conferences/useR-2006/Presentations/index.html</link>",
	comments = "",
	tipo = "pub"
)

# Febrero 2006 - Agosto 2007 AEAT. Subdirección General de Tecnologías de Análisis de la Información e Investigación del Fraude 
#machine-learning #text-mining #nlp #data-science #visualization
resumeDT <- addEvent(resumeDT, 
	start = "2006-02", 
	end = "2007-08", 
	centro = "AEAT", 
	title = "MACHINE LEARNING DEVELOPER",
	tags = "fraud-detection, python, R, SQL, machine-learning, visualization, text-mining, nlp, c++, data-science, web-information-extraction, neural-networks, graph-analysis",
	desc = 
	"
<p> &bull; <b>Fraud Detection</b> at Spanish Tax Agency (<b>AEAT. Agencia Española Administracion Tributaria. Subdirección General de Tecnologías de Análisis de la Información e Investigación del Fraude</b>) </p>
<p> &bull; Developing Algorithms for <b>Automatic Text Clasification & Categorization</b> and <b>Entity Extraction</b>
<p> &bull; Developing <b>AI Applications</b> for <b>Automatic Web Knowledge Extraction</b>
<p> &bull; Analysing and developing <b>fraud-detection</b> and <b>money laundering machine learning, data mining and visualization</b> methods and models
",
	comments = " ",
	tipo = "job"
)

# "GTT", "BI Developer", c("oracle", "sql", "pls/sql"), startJob = "2007-09", endJob = "2008-02")
resumeDT <- addEvent(resumeDT, 
	start = "2007-08", 
	end = "2008-02", 
	centro = "GTT", 
	title = "BI DEVELOPER",
	tags = "Oracle, SQL, pl/SQL, sql-tuning, ETL, dw-modeling, data-warehouse, RDBMS",
	desc = 
	"
<p> &bull; Designing, developing and maintaining <b>Business Intelligence solutions</b> and <b>Data Warehouse</b> models
<p> &bull; <b>Crafting and executing queries</b> upon request for data reporting
<p> &bull; <b>Testing & tuning</b> Business Intelligence models 
	",
	comments = " ",
	tipo = "job"
)

# Implementación de un Modelo de Visualización para Tareas de Recuperación de Información
# XXVII INTERNATIONAL AESLA CONFERENCE. 2009
# Corpus linguistics, computational linguistics and linguistic engineering
resumeDT <- addEvent(resumeDT, 
	start = "2009-06", 
	end = NA, 
	centro = "UCM", 
	title = "AESLA XXVII",
	tags = "text-mining, nlp, machine-learning, R, data-science, visualization",
	desc = 
	" 
<em>Implementación de un Modelo de Visualización para Tareas de  Recuperación de Información.</em>
<b>XXVII INTERNATIONAL AESLA CONFERENCE.</b> Corpus linguistics, computational linguistics and linguistic engineering. 2009",
	comments = "",
	tipo = "pub"
)

# "Indra", "Consultor Senior BI", 
# c("oracle", "sql", "pls/sql","microstrategy","ETL","reporting services","financiera","banca"),
# startJob = "2009-02", endJob = "2012-02")				   
resumeDT <- addEvent(resumeDT, 
	start = "2008-02", 
	end = "2012-02", 
	centro = "Indra", 
	title = "BI SENIOR CONSULTANT",
	tags = "ETL, reporting-services, Oracle, risk-management, finantial-services, risk-modeling, SQL, pl/SQL, Microstrategy, Cognos, dw-modeling, data-warehouse, Basilea-II",
	desc = 
	"
<p> &bull; Financial <b>Risk Modeling</b>
<p> &bull; <b>Reporting Services</b> for public financial statements and confidential statistical returns according to <b>Banco de España regulatory rules</b>
<p> &bull; <b>IT Control Objectives</b> for Basel II 
<p> &bull; Designing, developing and maintaining <b>Business Intelligence</b> solutions and <b>Data Warehouse</b> models
	",
	comments = " ",
	tipo = "job"
)

# fisheyeR: Fisheye and Hyperbolic-space-alike Interactive Visualization Tools in R
# CRAN - The Comprehensive R Archive Network. 2010
# http://cran.r-project.org/web/packages/fisheyeR/index.html
resumeDT <- addEvent(resumeDT, 
	start = "2010-01", 
	end = NA, 
	centro = "The Comprehensive R Archive Network", 
	title = "CRAN 2010",
	tags = "R-Package, machine-learning, text-mining, R, CRAN, data-science, visualization",
	desc = 
	" <em>fisheyeR: Fisheye and Hyperbolic-space-alike Interactive Visualization Tools in R.</em>
<b>CRAN - The Comprehensive R Archive Network.</b> 2010.
<link>http://cran.r-project.org/web/packages/fisheyeR/index.html</link>",
	comments = "",
	tipo = "pub"
)


# "Indra", "Consultor Senior Big Data Analytics", 
# c("R","python","scala","spark","machine-learning", "text-mining", "nlp", "data-science", "visualization"),
# startJob = "2012-02", endJob = "2016-05")	
resumeDT <- addEvent(resumeDT, 
	start = "2012-02", 
	end = "2016-05", 
	centro = "Indra", 
	title = "BIG DATA ANALYTICS SENIOR CONSULTANT",
	tags = "machine-learning, big-data, R, python, scala, spark, Hive, hbase, sap-hana, data-science, visualization, simulation, demand-forecasting, churn-prediction, predictive, analytics, social-media, text-mining, data-mining, product-segmentation, customer-segmentation, patient-demographics, population-health",
	desc = 
	"
Developing <b>machine-learning Algorithms and Applications</b> at several projects in diverse industries:
<p> &bull; Telecom & Energy:
<b>Energy Consumption & Customer Segmentation</b>,
Targeted <b>Churn prediction</b>, 
Electric <b>Demand Response Prediction</b> and <b>Customer Classification</b>
<p> &bull; Social Media & Politics: 
<b>Social Media Monitoring</b> & <b>Analytics</b>,
<b>Topic extraction</b> and <b>text categorization and clustering</b> for <b>massive datasets</b>,
<b>Social Web Mining</b> & <b>Sentiment Analysis Model</b>, <b>Electoral Predictive Geopositioning</b> and <b>Election Calculus Simulation</b>
<p> &bull; Bioinformatics:
<b>Risk stratification and classification of chronic disease</b> at SERGAS - CDTI (Centro Desarrollo Tecnológico Industrial)
	",
	comments = " ",
	tipo = "job"
)

# Developing Web Apps in R with Shiny
# I Xornada Usuarios R en Galicia. Centro de Novas Tecnoloxías. 2013
# http://webmelisa.es/xornada-r/
resumeDT <- addEvent(resumeDT, 
	start = "2013-10", 
	end = NA, 
	centro = "Centro Nuevas Tecnologías de Galicia", 
	title = "CNTG 2013",
	tags = "machine-learning, R, webApps, data-science, visualization, shiny-server",
	desc = 
	" 
<em>Developing Web Apps in R with Shiny.</em>
<b>I XORNADA USUARIOS R EN GALICIA.</b> Centro de Novas Tecnoloxías. 2013.
<link> http://webmelisa.es/xornada-r/ </link>",
	comments = "",
	tipo = "pub"
)

# "CD Hadoop", start = "2013-12", end = NA , group = "edu" ))
resumeDT <- addEvent(resumeDT, 
	start = "2013-12", 
	end = "2013-12", 
	centro = "Cloudera University", 
	title = "Cloudera Hadoop Dev",
	tags = "big-data, hadoop, map-reduce, hive, sqoop, flume, pig, analytics",
	desc = 
	" 
<p> &bull; Key concepts and expertise to <b>ingest and process data on a Hadoop cluster</b> 
<p> &bull;  Employing Hadoop ecosystem projects such as <b>MapReduce, Pig, Hive, Flume, and Sqoop</b>
<p> &bull; Organized by Cloudera University & Centro Nuevas Tecnologías de Galicia ",
	comments = "",
	tipo = "edu"
)
#"CD Spark", start = "2016-04", end = NA , group = "edu" ))
resumeDT <- addEvent(resumeDT, 
	start = "2016-04", 
	end = "2016-04", 
	centro = "Cloudera University", 
	title = "Cloudera Spark Dev",
	tags = "big-data, spark, scala, kafka, flume, hive, python, machine-learning, analytics",
	desc = 
	"
 <p> &bull; Key concepts and expertise to <b>ingest and analyze data on a Spark cluster</b>
 <p> &bull; Employing <b>Spark (including Spark Streaming and Spark SQL), Flume, hive, Kafka, and Sqoop</b>
 <p> &bull; Organized by Cloudera University & Centro Nuevas Tecnologías de Galicia
 ",
	comments = "",
	tipo = "edu"
)

# BiGuardian: Sistema de detección proactiva y predictiva de amenazas de ciberseguridad.
# ITMATI: Machine Learning Workshop Galicia 2016
resumeDT <- addEvent(resumeDT, 
	start = "2016-10", 
	end = NA, 
	centro = "Instituto Tecnológico de Matemática Industrial", 
	title = "ITMATI 2016",
	tags = "machine-learning, security, big-data, cyber-security, data-science, analytics, scala, spark, hadoop, flink, scala",
	desc = 
	" 
<em>BiGuardian: Sistema de detección proactiva y predictiva de amenazas de ciberseguridad.</em>
<b>ITMATI: Machine Learning Workshop. </b> Galicia. 2016",
	comments = "",
	tipo = "pub"
)

# "Oesia", "Consultor Senior Big Data Analytics", 
# c("R","python","scala","spark","machine-learning", "text-mining", "nlp", "data-science", "visualization"),
# startJob = "2016-05", endJob = "2017-09")	
resumeDT <- addEvent(resumeDT, 
	start = "2016-05", 
	end = "2017-09", 
	centro = "Oesia", 
	title = "BIG DATA ANALYTICS SENIOR CONSULTANT",
	tags = "supply-chain, machine-learning, optimization, data-science, visualization, R, python, scala, spark, Hive",
	desc = 
	"
Developing <b>machine-learning Algorithms and Applications</b> in diverse industries:	
<p> &bull; Retail: 
<b>Warehouse Simulation & Supply Chain Optimization</b> at Inditex</p>	
<p> &bull; Cyber Security: 
<b>Real-time Proactive and Predictive Cyberattacks Detection System</b> </p>
	",
	comments = "",
	tipo = "job"
)

# "Barkibu", "Head of Data Science", 
# c("R","python","scala","spark","machine-learning", "text-mining", "nlp", "data-science", "visualization"),
# startJob = "2017-09", endJob = "2018-12")	
resumeDT <- addEvent(resumeDT, 
	start = "2017-09", 
	end = as.character(Sys.Date()), 
	centro = "Barkibu", 
	title = "HEAD OF DATA SCIENCE",
	tags = "customer-analytics, retail, machine-learning, optimization, data-science, visualization, R, AWS, churn, forecasting, NLP, aws-redshift, aws-athena, aws-ec2, aws-emr, aws-glue, aws-pipelines",
	desc = 
	"
Responsabilities:
<p> &bull; Define the <b>data science company strategy</b></p>	
<p> &bull; Lead the Development of <b>Barkibu´s Predictive and Natural Language Processing models</b>. 
Barkibu is active in 16 countries with a large and fast growing database of pet lovers and vets. </p>	
<p> &bull; Identify infrastructure opportunities to <b>increase big data analytics productivity</b> </p>	
<p> &bull; <b>Lead</b> a high-performing big data analytics team through the <b>successful development of Barkibu Intelligence Unit</b>. BIU help retailers or brands to better understand their customers (owners and pets) offering a complete analytics suite for advanced Persona Marketing Campaing Optimization, High-Value Customer Acquisition and Churn Prevention. </p>	
<p> &bull; Act as an internal <b>advisor on all issues related to data</b> </p>	
<p> &bull; <b>Hire, mentor, and manage</b> data scientists </p>	
	",
	comments = "",
	tipo = "job"
)




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


# Sales & Marketing
# Finance & Risk 
# Customer & Channel 
# Operations & Workforce 

# Demand Forecasting
# Loyalty Programs
# Customer Churn 
# Cross-sell & Upsell 
# Customer Acquisition 
# Marketing Mix Optimization 
# Fraud Detection
# Risk& Compliance 
# Loan Defaults 
# Pricing Strategy
# Perf Risk Management 
# Lifetime Customer Value 
# Product Segmentation 
# Lifetime Customer Value 
# Population Health
# Patient Demographics 
# Supply Chain Optimization
# Personalization
# Store Location Demographics
# Inventory Management 
# Call Center Optimization
# Operational Efficiency 
# Pay for Performance 
# Remote Monitoring 
# Predictive Maintenance 
# Asset Management 

# Color Hex
# http://www.color-hex.com/color/d5d5d5

# Color theme Palettes
# Corporate (white, darkblue, blue, lightwhite)
# FRESH #f7f5e6 
# VERMILLION #333A56 
# SUNSHINE #52658f    
# CLEAN #e8e8e8

# Muted Minimal (rojo, azul, gris, blanco)
# DUSTY #96858f
# LAVENDAR #6d7993
# OVERCAST #9099a2
# PAPER #D5D5D5

# warm
# GRAIN #d7cec7
# BLACKBOARD #565656
# OXBLOOD #76323f
# TAN #c09f80

# fresh blues
# FEATHER #77c904
# MARINE #57bc90
# FORES #015249
# SLEEK GREY #a5a5af

# crisp clean
# ICE #99d3df
# FRESH WATER #88bbd6
# PLASTER #cdcdcd
# LINEN #e9e9e9
