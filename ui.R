shinyUI(fluidPage(
  # Add Javascript
  tags$head(
    tags$script(type="text/javascript", src = "md5.js"),
    tags$script(type="text/javascript", src = "passwdInputBinding.js")
  ),
  
  titlePanel("Password protected Shiny app"),
  
  uiOutput("app")
))
