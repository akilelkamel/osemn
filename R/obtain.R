obtain <- function(from = "csv", ...){
  supported_sources <- c("csv", "tsv", "excel", "dat", "mysql")
  from = stringr::str_to_lower(from)
  if(!from %in% supported_sources){
    stop(paste0("`from` must be one of the following supported source formats: [", paste(as.character(supported_sources), collapse=", "), "]"))
  } else {
    if(from == "csv"){
      df <- readr::read_csv(...)
    }
  }
  return(df)
}

