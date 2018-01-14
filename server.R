
library(shiny)
library(rpart)
#for a fancy plot
#install.packages("RGtk2", depen=T, type="source")
#library(RGtk2)
#library(cairoDevice)
#library(rattle)


# Define server logic required to create a classification tree
shinyServer(function(input, output) {
   
  output$ClassTree <- renderPlot({
    
    
    creditData <- read.csv('http://invidio.drl.pl/files/german_credit.csv',sep=",")
    creditData$default<-as.factor(creditData$default)
    
    boxSize=input$boxSize
    cpval=input$cpval
    minb=input$minb
    maxd=input$maxd
    
    
    tree<-rpart(default~.,data=creditData,control = rpart.control(cp = cpval, minbucket=minb,maxdepth = maxd))
    # simple plot
    plot(tree)
    text(tree,cex=boxSize)
    #fancyRpartPlot(tree,tweak=boxSize)
    
    
  })
  
})
