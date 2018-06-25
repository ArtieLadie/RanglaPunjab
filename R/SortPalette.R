#' Sort Palette - Under Construction https://www.alanzucconi.com/2015/09/30/colour-sorting/
#' @description This function sorts colors of up to 3 palettes
#' @param name Name of 1st palette
#' @param name2 Name of 2nd (optional) palette
#' @param name3 Name of 3rd (optional) palette
#' @param ... Numeric, complex, or logical vectors
#' @return Vector of 10 or 15 sorted color values (in the unlikely event there are duplicates, 
#'         then return less than 10 or 15 colors)
#' @export
#' @examples
#' SortPalette("Kulfi")
#' SortPalette("Haveli","HeerRanjha")
#' SortPalette("FieldsOfPunjab2","GoldenTemple2","Jutti3")
SortPalette <- function(name=NULL, name2=NULL, name3=NULL,...){
  
}