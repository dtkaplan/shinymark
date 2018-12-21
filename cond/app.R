#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  titlePanel("Conditional panels"),
  
  column(4, wellPanel(
    sliderInput("n", "Number of points:",
                min = 10, max = 200, value = 50, step = 10)
  )),
  
  column(5,
         "The plot below will be not displayed when the slider value",
         "is less than 50.",
         
         # With the conditionalPanel, the condition is a JavaScript
         # expression. In these expressions, input values like
         # input$n are accessed with dots, as in input.n
         conditionalPanel("input.n >= 50",
                          plotOutput("scatterPlot", height = 300)
         )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$scatterPlot <- renderPlot({
    x <- rnorm(input$n)
    y <- rnorm(input$n)
    plot(x, y)
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)

