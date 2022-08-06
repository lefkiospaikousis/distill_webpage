library(shiny)

ui <- fluidPage(
  h4("The div with a border to realise the centering"),
  div(style = "border: 1px solid silver; width: 250px; ",
      selectInput("select", "A select Input", NULL),
      textAreaInput("area", "Some comments"),
      actionButton("go", "Go", style = "display:block; margin:0 auto")
  )
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)