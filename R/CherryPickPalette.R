#' Cherry Pick Palette --- Getting Facelift
#' @description This function allows user to cherry pick colors from 2 to 3 palettes
#' @param name Name of 1st palette
#' @param name2 Name of 2nd palette
#' @param name3 Name of 3nd (optional) palette
#' @param ... Numeric, complex, or logical vectors
#' @return user-defined palette of colors
#' @import shiny 
#' @export
#' @examples
#' CherryPickPalette("GoldenTemple","AmritsariPedeWaliLassi")
#' CherryPickPalette("BiryaniRice","Kulfi","Haveli2")
CherryPickPalette <- function (name, name2=NULL, name3=NULL,...){
  
  
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