#' @title "obtain" data from various data sources
#'
#' @description It is the first step in the `OSEMN` data science pipeline. It allows to read data from a chosen data source
#'
#' @param from the type of data source from which the data will be obtained.
#' This should be one of "csv", "tsv", "excel", "rds", "mysql".
#' @param ... any data source specific parameter
#'
#' @return a data frame containg the data
#' @export
#'
#' @examples
#' \dontrun{
#' #read data for a csv file
#' my_data <- obtain(from = "csv", file = "data.csv")
#'
#' #read data for a csv file
#' my_data <- obtain(from = "csv", file = "data.csv")
#'
#' #read data for a csv file
#' my_data <- obtain(from = "csv", file = "data.csv")
#'
#' #read data for a csv file
#' my_data <- obtain(from = "csv", file = "data.csv")
#' }
#'
obtain <- function(from = "csv", ...){
  supported_sources <- c("csv", "tsv", "excel", "rds", "mysql")
  from = stringr::str_to_lower(from)
  if(!from %in% supported_sources){
    stop(paste0("`from` must be one of the following supported source formats: [", paste(as.character(supported_sources), collapse=", "), "]"))
  } else {
    if(from == "csv"){
      df <- readr::read_csv(...)
    } else if (from == "tsv"){
      df <- readr::read_tsv(...)
    } else if (from == "excel"){

    } else if (from == "rds"){
      df <- readRDS(...)
    } else if (from == "mysql"){

    }
  }
  return(df)
}

