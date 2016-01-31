library(datasets)
reg=lm(longley$Employed~longley$GNP)
predFunc=function(x)(as.numeric(coef(reg)[1]+coef(reg)[2]*x))


shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
   output$inputValue <- renderPrint({input$GNP})
   output$pred=renderPrint({predFunc(input$GNP)})
  
   output$distPlot = renderPlot({
       plot(longley$GNP,longley$Employed)
       abline(reg)
    })
  
})


