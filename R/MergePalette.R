#' Merge Palette
#' @description This function takes 2 or 3 palettes and returns a palette of 10 or 15 colors 
#'              (in the unlikely event there are duplicates, then return less than 10 or 15)
#' @param name Name of 1st palette
#' @param name2 Name of 2nd palette
#' @param name3 Name of 3nd (optional) palette
#' @param ... Numeric, complex, or logical vectors
#' @return Vector of 10 or 15 color values (in the unlikely event there are duplicates, 
#'         then return less than 10 or 15 colors)
#' @export
#' @examples
#' MergePalette("AmritsariKulcha", "Phulkari2")
#' MergePalette("Gidha", "Jutti2")
#' MergePalette("FieldsOfPunjab","GoldenTemple2","Jutti3")
MergePalette <- function(name,name2=NULL,name3=NULL,...){
  
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

