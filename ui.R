#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Define UI for application that draws a histogram
shinyUI(
  
  fluidPage(
  
  # Application title
  titlePanel("Credit Defaults Prediction"),
  
  
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(

       sliderInput("cpval",
                   "Complexity:",
                   min = 0,
                   max = .05,
                   value = .05),
       sliderInput("maxd",
                   "Max Depth:",
                   min = 2,
                   max = 20,
                   value = 5),
       sliderInput("minb",
                   "Min Bucket Size:",
                   min = 1,
                   max = 180,
                   value = 10),
       
        sliderInput("boxSize",
                "Text Size:",
                min = 0.01,
                max = 3,
                value = .7)),
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("ClassTree")
    )
  ),
  helpText("Documentation Summary:"),
  helpText("The Classification Tree is created based on the German Credit Data (http://invidio.drl.pl/files/german_credit.csv) and the aim is to predict the defaults. 
Application user can manipulate the complexity of the tree with the complexity parameter, maximum tree depth and the minumum size of the bucket. It is also possible to adjust text size."),
  helpText("Default=1, Paid Credit=0")
  
           
  
  
  
))
