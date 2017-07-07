library(shiny)

shinyUI(fluidPage(
  titlePanel("My Shiny App "),
  sidebarLayout(
    sidebarPanel(
       numericInput("numeric","How many rendom numbers do you want? ;)" ,value=500 , min=1, max=500 , step=1 ),
       sliderInput("sliderA" , "Please chose a number" , 1 , 99 , value = c(-50,50)),
       sliderInput("sliderB" , "Please chose a number" , 1 , 99 , value = c(-50,50)),
       checkboxInput("show_Alab","Show/Hide A Axis Label ",value = TRUE), 
       checkboxInput("show_Blab","Show/Hide B Axis Label ",value = TRUE), 
       checkboxInput("show_title","Show/Hide Title "),
       submitButton("Submit!")
    ),
    mainPanel(
       h3("Graph of random number !"),
       plotOutput("plot1")
    )
  )
))
