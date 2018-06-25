# Internal, hidden function
# Called by CherryPickPalette()
CustomPal <- function(new_pal){
  if (interactive()){
    cherrypickedpalette <- runApp(list(
      ui = fluidPage(
        headerPanel("Cherry Pick Your Own Palette!"),
        sidebarPanel (
          selectInput('col', 'Options', new_pal, multiple=TRUE, selectize=FALSE, size = 15)
        ),
        mainPanel(
          h5('Your Cherry-Picked Palette'),
          fluidRow(column(9,verbatimTextOutput("col"))),
          actionButton("action", label = "Save My Palette"),
          plotOutput("cherrycolors")
        )
      ),#end fluidPage
      server = function(input,output,session){
        outputdata <-  reactive({
          input$col
        })
        
        output$col <- { 
          renderPrint(outputdata())
        }
        
        output$cherrycolors=renderPlot({
          if (!is.null(input$col))
          {
            RenderPal(input$col, "Cherry-Picked Palette")
          }
        }, height = 450, width = 450 ) 
        
        observeEvent(input$action, {
          if (!is.null(outputdata)){
            cherrypickedpalette <<- paste(isolate(outputdata()))
            print(noquote("Colors stored in 'cherrypickedpalette'"))
            stopApp(cherrypickedpalette)
          }#end !is.null(outputdata)
        }#end input$action,
        )#end observeEvent
      }#end server
    )#end list
    )#end runApp
  }#end if interactive
}