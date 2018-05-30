
# List of palettes
PunjabiPalette <- list (
  AmritsariKulcha = c("#e3e4d9", "#ebdc9c", "#b3340e", "#67140a", "#2a231d"),
  CholeBhature = c("#7cab70", "#d9bf9c", "#a04d05", "#995f7e", "#972107"),
  FieldsOfPunjab = c("#fda726", "#d75b07", "#702e06", "#514617", "#313407"),
  FieldsOfPunjab2 = c("#9aa5b4", "#516e9c", "#13306a", "#94aa0b", "#a36316"),
  GoldenTemple = c("#bdcad0", "#5f8abf", "#ffd860", "#d88821", "#672006"),
  GoldenTemple2 = c("#7d84cb", "#374890","#c2592e", "#fa5102", "#722416"),
  Pindh = c("#5eb39c", "#1f6562","#2168c2", "#d77e5f", "#5f3e25"),
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

#' List Palette
#' @description This function returns list of all palettes
#' @param listname Name of palette vector
#' @usage ListPalette(listname)
#' @return List of palettes
#' @export
#' @examples
#' ListPalette("PunjabiPalette")
ListPalette <- function(listname="PunjabiPalette"){

  if (listname != "PunjabiPalette"){
    stop("Palette list not found.")
  }

  list <- get(listname)
  names(list)
}
  
#' Palette of 5 Colors
#' @description This function returns a palette of 5 colors
#' @param name Palette name
#' @usage RanglaPunjab(name)
#' @return Vector of 5 color values
#' @import tidyverse
#' @export
#' @examples
#' RanglaPunjab("Teej")
RanglaPunjab <- function(name){

  pal <- PunjabiPalette[[name]]
  if (is.null(pal))
    stop("Palette not found. Run ListPalette() for list of palettes")
  pal
}



#' Merge Palette
#' @description This function returns a palette of 10 colors (in the unlikely event there are duplicates, then return less than 10)
#' @param name Name of 1st palette
#' @param name2 Name of 2nd palette
#' @usage MergePalette(name, name2)
#' @return Vector of 10 color values (in the unlikely event there are duplicates, then return less than 10)
#' @export
#' @examples
#' MergePalette("Gidha", "Teej")
MergePalette <- function(name,name2){

  pal <-  RanglaPunjab(name)
  pal2 <-  RanglaPunjab(name2)

  if ((!is.null(pal)) || (!is.null(pal2)))
    new_pal = unique(c(pal,pal2))
  else
    stop("Palette not found.")
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
PaintPalette <- function(name, name2, name3) {

  x <- RanglaPunjab(name)
  if (!missing(name2)){
    y <- RanglaPunjab(name2)
    if(name != name2){
      name <- paste(name,"&",name2,sep=" ")
      x = unique(c(x,y))
    }
  }
  if (!missing(name3)){
    z <- RanglaPunjab(name3)
    if (name2 != name3){
      name <- paste(name, name2,"&",name3,sep=" ")
      x = unique(c(x,y,z))
    }
  }

  n <- length(x)
  old <- graphics::par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(graphics::par(old))

  graphics::image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")
  graphics::rect(0, 0.9, n + 1, 1.1, col = grDevices::rgb(1, 1, 1, 0.8), border = NA)
  graphics::text((n + 1) / 2, 1, labels = name, cex = 2, family = "serif")
}


#' Cherry Pick Palette 
#' @description This function allows user to cherry pick colors from 2 palettes
#' @param name Name of 1st palette
#' @param name2 Name of 2nd palette
#' @usage CherryPickPalette(name, name2)
#' @return user-defined palette of colors
#' @export
#' @examples
#' CherryPickPalette("GoldenTemple","Gidha2")
CherryPickPalette <- function (name, name2){
  #interactive pop-up that allows users to click on colors they want
 
}

#' Show Palette Photo
#' @description This function shows photo that inspired a palette
#' @param name palette name
#' @usage ShowPalettePhoto(name)
#' @return image of reference photo with palette
#' @import jpeg
#' @export
#' @examples
#' ShowPalettePhoto("GoldenTemple")
ShowPalettePhoto <- function(name){

  pal <- RanglaPunjab(name)
  if (is.null(pal))
    stop("palette not found.")
  x <- tolower(name)
  sysloc <- system.file(package="RanglaPunjab")
  x <- paste (sysloc,"/img/",x,".jpg", sep="")
  jj <- readJPEG(x,native=TRUE)
  graphics::plot(0:1,0:1,type="n",ann=FALSE,axes=FALSE)
  graphics::rasterImage(jj,0,0,1,1)
}
