#' Paint Palette
#' @description This function paints an image of up to 3 palettes
#' @param name Name of 1st palette
#' @param name2 Name of 2nd (optional) palette
#' @param name3 Name of 3rd (optional) palette
#' @param ... Numeric, complex, or logical vectors
#' @return image of colors and description
#' @export
#' @examples
#' PaintPalette("Pindh")
#' PaintPalette("FieldsOfPunjab","Jutti")
#' PaintPalette("FieldsOfPunjab","Jutti","Paranda")
PaintPalette <- function(name=NULL, name2=NULL, name3=NULL,...) {
  
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
  
  RenderPal(x,new_name)
  
}