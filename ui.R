# Developed by : Abduljalil Al-Jaziri
# Date : 28 May 2016
# 
# This is the user-interface definition of the Shiny web application.

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Double Your Money!"),
  
  
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    sliderInput("bins",
                "Interest Rate per year (%)",
                min = 1,
                max = 30,
                value = 5)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    p('This app will tell you which year your money will be doubled (200%) based on compound interest formula'),
   
    plotOutput("distPlot")
  )
))
