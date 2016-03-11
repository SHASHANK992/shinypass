library(shiny)
library(datasets)
Logged = FALSE;
PASSWORD <- data.frame(Brukernavn = "test", Passord = "202cb962ac59075b964b07152d234b70")
# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  source("www/login.R",  local = TRUE)
  
  observe({
    if (USER$Logged == TRUE) {
      output$obs <- renderUI({
        sliderInput("obs", "Number of observations:", 
                    min = 10000, max = 90000, 
                    value = 50000, step = 10000)
      })
      
      output$distPlot <- renderPlot({
        dist <- NULL
        dist <- rnorm(input$obs)
        hist(dist, breaks = 100, main = paste("Your password:", input$passwd))
      })
    }
  })
})
