#' List Palette
#' @description This function returns list of all palettes
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