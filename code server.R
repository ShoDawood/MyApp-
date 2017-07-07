library(shiny)
shinyServer(function(input, output) {
  output$plot1=renderPlot({
    set.seed(07-07-2016)
    numberofplot<- input$numeric
    minA <- input$sliderA[1]
    maxA <- input$sliderA[2]
    minB <- input$sliderB[1]
    maxB <- input$sliderB[2]
    dataA <- runif(numberofplot,minA,maxA)
    dataB <- runif(numberofplot,minB,maxB)
    Alab <- ifelse(input$show_Alab,"A Axis","")
    Blab <- ifelse(input$show_Blab,"B Axis","")
    main <- ifelse(input$show_title,"My graph of random number","")
    plot(dataA , dataB , Alab=Alab , Blab=Blab , main=main , Alim=c(1,99) , Blim=c(1,99))
  })
})
