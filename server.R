shinyServer(
  function(input, output) {
    output$bmi <- renderText(if(input$units == 1){
                              as.integer(input$weight)/(as.integer(input$height)^2)*10000
                           }
                           else if(input$units == 2){
                              as.integer(input$weight)/(as.integer(input$height)^2)*703
                           }
                           else{
                              'NA'
                           }
                  )
  }
)
