# List of palettes
PunjabiPalette <- list (
  FieldsOfPunjab = c("#fda726", "#d75b07", "#702e06", "#514617", "#313407"),
  FieldsOfPunjab2 = c("#9aa5b4", "#516e9c", "#13306a", "#94aa0b", "#a36316"),
  GoldenTemple = c("#bdcad0", "#5f8abf", "#ffd860", "#d88821", "#672006"),
  GoldenTemple2 = c("#7d84cb", "#374890","#c2592e", "#fa5102", "#722416"),
  Pindh = c("#5eb39c", "#1f6562","#2168c2", "#d77e5f", "#5f3e25"),
  Haveli = c("#f4e5d8","#f0b49b","#bb5a40", "#653219", "#19110b"),
  Haveli2 = c("#ecece9", "#81826c", "#5d5f64", "#69332e", "#5c4e48"), 
  AmritsariKulcha = c("#e3e4d9", "#ebdc9c", "#b3340e", "#67140a", "#2a231d"),
  CholeBhature = c("#7cab70", "#d9bf9c", "#a04d05", "#995f7e", "#972107"),
  BiryaniRice = c("#efc04d","#d94520","#527934","#2d1409","#084365"),
  AmritsariLassi = c("#d7dacc","#efedd0","#a68b4f","#d5dfeb","#6e675c"),
  AmritsariPedeWaliLassi = c("#f2f3e7","#c6b49c","#f9e060","#837e53","#503316"),
  Kulfi = c("#f0ecb0","#a96337", "#4a4000", "#4a121b", "#001a24"),
  SohniMahiwal = c("#dc6478", "#a9365a", "#f4420e", "#403c61", "#313f42"),
  HeerRanjha = c("#93dd7d","#3272b6", "#ec9382", "#ab3a40", "#072246"),
  Gidha = c("#fdea6e", "#4aec6a", "#fb7894", "#f13111", "#2584a0"),
  Gidha2 = c("#fb9961", "#f13375", "#771341", "#2d3c2f", "#ea263c"),
  Teej = c("#22325f", "#88ce64", "#fbd234", "#b8091f", "#682f4e"),
  Phulkari = c("#efa20b", "#04a193", "#14555d","#820203", "#ed2e06"),
  Phulkari2 = c("#9c1a41", "#42a4e8", "#3a35da", "#ee523c", "#3e167c"),
  Jutti = c("#460809", "#00699e", "#391b72", "#03471d", "#ba0841"),
  Jutti2 = c("#e278e5", "#13187e", "#fb6225", "#f23561", "#d2b88f"),
  Jutti3 = c("#6fa42c", "#db3717", "#051a8d", "#ef38a7", "#202c3d"),
  Paranda = c("#eaa32b", "#f45d59", "#c33dd2", "#92214c", "#201274")
)

cherrypickedpalette <<- NULL

#' List Palette
#' @description This function returns list of all palettes
#' @usage ListPalette()
#' @return List of palettes
#  "FieldsOfPunjab"         "FieldsOfPunjab2"        "GoldenTemple"           "GoldenTemple2"         
#  "Pindh"                  "Haveli"                 "Haveli2"                "AmritsariKulcha"       
#  "CholeBhature"           "BiryaniRice"            "AmritsariLassi"         "AmritsariPedeWaliLassi"
#  "Kulfi"                  "SohniMahiwal"           "HeerRanjha"             "Gidha"                 
#  "Gidha2"                 "Teej"                   "Phulkari"               "Phulkari2"             
#  "Jutti"                  "Jutti2"                 "Jutti3"                 "Paranda" 
#' @export
#' @examples
#' ListPalette()
ListPalette <- function(){
  names(PunjabiPalette)
}

#' Palette of 5 Colors
#' @description This function returns a palette of 5 colors
#' @param name Palette name
#' @usage RanglaPunjab(name)
#' @return Vector of 5 color values
#' @import tidyverse
#' @export
#' @examples
#' RanglaPunjab("GoldenTemple")
#' RanglaPunjab("SohniMahiwal")
#' RanglaPunjab("Teej")
RanglaPunjab <- function(name=NULL){
  
  pal <- NULL
  
  if (nargs() < 1){
    stop("Enter 1 valid palettes. Run ListPalette() for list of palettes.")
  }
  
  if (!(name %in% names(PunjabiPalette))){
    stop("Palette not found. Run ListPalette() for list of palettes.")
  }
  
  pal <- PunjabiPalette[[name]]
  pal
}


#' Merge Palette
#' @description This function takes 2 or 3 palettes and returns a palette of 10 or 15 colors 
#'              (in the unlikely event there are duplicates, then return less than 10 or 15)
#' @param name Name of 1st palette
#' @param name2 Name of 2nd palette
#' @param name3 Name of 3nd (optional) palette
#' @usage MergePalette(name, name2, name3)
#' @return Vector of 10 or 15 color values (in the unlikely event there are duplicates, 
#'         then return less than 10 or 15 colors)
#' @export
#' @examples
#' MergePalette("AmritsariKulcha", "Phulkari2")
#' MergePalette("Gidha", "Jutti2")
#' MergePalette("FieldsOfPunjab","GoldenTemple2","Jutti3")
MergePalette <- function(name,name2=NULL,name3=NULL){
  
  pal <- NULL
  pal2 <- NULL
  new_pal <- NULL
  args <- unlist(mget(names(formals())))
  
  if ((nargs() < 2) || (nargs() > 3)){
    stop("Enter 2 or 3 valid palettes. Run ListPalette() for list of palettes.")
  }
  
  if (anyDuplicated(args)){
    stop("Enter unique palettes only. Run ListPalette() for list of palettes.")
  }
  
  if (!missing(name3)){
    pal3 <-  RanglaPunjab(name3)
    new_pal <- c(pal3)
  }
  
  pal <-  RanglaPunjab(name)
  pal2 <-  RanglaPunjab(name2)
  new_pal <-unique(c(pal,pal2,new_pal))
  new_pal
}

#' Paint Palette
#' @description This function paints an image of up to 3 palettes
#' @param name Name of 1st palette
#' @param name2 Name of 2nd (optional) palette
#' @param name3 Name of 3rd (optional) palette
#' @usage PaintPalette(name, name2, name3)
#' @return image of colors and description
#' @export
#' @examples
#' PaintPalette("Pindh")
#' PaintPalette("FieldsOfPunjab","Jutti")
#' PaintPalette("FieldsOfPunjab","Jutti","Paranda")
PaintPalette <- function(name=NULL, name2=NULL, name3=NULL) {
  
  new_name <- NULL
  args <- unlist(mget(names(formals())))
  
  if (nargs() == 0){
    stop("Enter 1 to 3 valid palettes. Run ListPalette() for list of palettes.")
  }
  
  if ((nargs() > 1) && (anyDuplicated(args))){
    stop("Enter unique palettes only. Run ListPalette() for list of palettes.")
  }
  
  
  x <- RanglaPunjab(name)
  if (!missing(name2)){
    y <- RanglaPunjab(name2)
    new_name <- c(name,name2)
    x = unique(c(x,y))
  }
  if (!missing(name3)){
    z <- RanglaPunjab(name3)
    new_name <- c(new_name,name3)
    x = unique(c(x,y,z))
  }
  
  if (length(new_name) == 3) {
    new_name <- paste(name,",",name2,"&",name3,sep=" ")
  }
  else if (length(new_name) == 2){
    new_name <- paste(name,"&",name2,sep=" ")
  }
  else{
    new_name <- name
  }
  
  RenderPalette(x,new_name)
  
}

# Internal, hidden function
# Called by PaintPalette() and CherryPickPalette()
RenderPalette <- function(x,name){
  
  if ((missing(x)) || (missing(name))){
    stop("Internal error, please troubleshoot")
  }
  n <- length(x)
  old <- graphics::par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(graphics::par(old))
  
  graphics::image(1:n, 1, as.matrix(1:n), col = x,
                  ylab = "", xaxt = "n", yaxt = "n", bty = "n")
  graphics::rect(0, 0.9, n + 1, 1.1, col = grDevices::rgb(1, 1, 1, 0.8), border = NA)
  graphics::text((n + 1) / 2, 1, labels = name, cex = 2, family = "serif")
}

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
            RenderPalette(input$col, "Cherry-Picked Palette")
          }
        }, height = 450, width = 450 ) 
        
        observeEvent(input$action, {
          if (!is.null(outputdata)){
            cherrypickedpalette <<- paste(isolate(outputdata()))
            print("Colors stored in variable cherrypickedpalette")
            stopApp(cherrypickedpalette)
          }#end !is.null(outputdata)
        }#end input$action,
        )#end observeEvent
      }#end server
    )#end list
    )#end runApp
  }#end if interactive
}



#' Cherry Pick Palette
#' @description This function allows user to cherry pick colors from 2 to 3 palettes
#' @param name Name of 1st palette
#' @param name2 Name of 2nd palette
#' @param name3 Name of 3nd (optional) palette
#' @usage CherryPickPalette(name, name2, name3)
#' @return user-defined palette of colors
#' @import shiny 
#' @export
#' @examples
#' CherryPickPalette("GoldenTemple","AmritsariPedeWaliLassi")
#' CherryPickPalette("BiryaniRice","Kulfi","Haveli2")
CherryPickPalette <- function (name, name2=NULL, name3=NULL){
  
  cherrypickedpalette <- NULL
  new_pal <- NULL
  
  if ((nargs() < 2) || (nargs() > 3)){
    stop("Enter 2 or 3 valid palettes. Run ListPalette() for list of palettes.")
  }
  if (nargs() == 2){
    new_pal <- MergePalette(name,name2)
  }
  else if (nargs() == 3){
    new_pal <- MergePalette(name,name2,name3)
  }
  
  cherrypickedpalette <- CustomPal(new_pal)
  
  
}

#' Show Palette Photo
#' @description This function shows photo that inspired a palette
#' @param name palette name
#' @param ... Numeric, complex, or logical vectors.
#' @usage ShowPalettePhoto(name)
#' @return image of reference photo with palette
#' @import jpeg
#' @export
#' @examples
#' ShowPalettePhoto("GoldenTemple")
#' ShowPalettePhoto("Kulfi")
#' ShowPalettePhoto("AmritsariPedeWaliLassi")
ShowPalettePhoto <- function(name=NULL,...){
  
 if (nargs() > 1){
    stop("Enter 1 valid palette. Run ListPalette() for list of palettes.")
  }
  
  pal <- RanglaPunjab(name)
  x <- tolower(name)
  sysloc <- system.file(package="RanglaPunjab")
  x <- paste (sysloc,"/img/",x,".jpg", sep="")
  jj <- readJPEG(x,native=TRUE)
  graphics::plot(0:1,0:1,type="n",ann=FALSE,axes=FALSE)
  graphics::rasterImage(jj,0,0,1,1)
}