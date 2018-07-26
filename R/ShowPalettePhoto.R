#' Show Palette Photo --- Getting Facelift
#' @description This function shows photo that inspired a palette
#' @param name palette name
#' @param ... Numeric, complex, or logical vectors
#' @return image of reference photo with palette
#' @import jpeg
#' @export
#' @examples
#' ShowPalettePhoto("GoldenTemple")
#' ShowPalettePhoto("Kulfi")
#' ShowPalettePhoto("AmritsariPedeWaliLassi")
ShowPalettePhoto <- function(name=NULL,...){
  

  if ((nargs() > 1) || (nargs() < 1)){
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