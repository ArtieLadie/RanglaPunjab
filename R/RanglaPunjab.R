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



#' Palette of 5 Colors
#' @description This function returns a palette of 5 colors
#' @param name Palette name
#' @param ... Numeric, complex, or logical vectors
#' @return Vector of 5 color values
#' @import tidyverse
#' @export
#' @examples
#' RanglaPunjab("GoldenTemple")
#' RanglaPunjab("SohniMahiwal")
#' RanglaPunjab("Teej")
RanglaPunjab <- function(name=NULL,...){
  
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












