library(shiny)
shinyServer(
  function(input, output) {
    output$opr <- renderPrint({input$pr})
    output$ort <- renderPrint({input$rt})
    output$oti <- renderPrint({input$ti})
    
    output$am <- renderText({as.numeric(input$pr)*((1+as.numeric(input$rt)*.01)^(as.numeric(input$ti)))})
  }
)