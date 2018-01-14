library(shiny)

shinyUI(

  fluidPage(
  
  # Application title
  titlePanel("Credit Defaults Prediction"),
  # Sidebar with a slider 
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
    # Show a plot of 
    mainPanel(
       plotOutput("ClassTree")
    )
  ),
  helpText("Documentation Summary:"),
  helpText("The Classification Tree is created based on the German Credit Data (http://invidio.drl.pl/files/german_credit.csv) and the aim is to predict the defaults. 
Application user can manipulate the complexity of the tree with the complexity parameter, maximum tree depth and the minumum size of the bucket. It is also possible to adjust text size."),
  helpText("Default=1, Paid Credit=0")
  ))
