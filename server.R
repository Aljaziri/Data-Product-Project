# Developed by : Abduljalil Al-Jaziri
# Date : 28 May 2016
# 
# This is the server logic for the Shiny web application.


library(shiny)

shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    x = c()
    y = c()
    colors = c()
    #colors = c("red", "yellow", "green", "violet", "orange", "blue", "pink", "cyan")
    
    TheYear = (72/input$bins)
    Years = TheYear + 2
    for (i in 1: Years){ 
      x = c(x, 100*(1+(input$bins/100))^i )
      y = c(y, i)
      
      if (i<TheYear){colors = c(colors,"cyan")}
      if (i>=TheYear){colors = c(colors,"green")}
      }
    
    
    # generate bins based on intreset rate from ui.R
    # x    <- faithful[, 1] 
    # bins <- seq(min(x), max(x), length.out = (72/input$bins) + 1)   
    
    
    # draw the histogram with the specified number of bins
  # barplot(x, breaks = bins, col = colors , border = 'white', main="Your Investment Growth Over Time", xlab="Years", ylab="Your Wealth")
    barplot(x, names.arg= y , col = colors , border = 'white', main="Your Investment Growth Over Time", xlab="Years", ylab="Your Wealth")
    
    
  })
  
})
