#Provide a path to prism.csv files, reads in files and assigns appropriate header info, retunrs list

prismDat <- function(path) {
  data.path <- path
  glob.path <- paste0(data.path, "*", ".csv")  
  dataFiles <- lapply(Sys.glob(glob.path), read.csv, skip=11, head=F)
  climvars <- c("pdate", "ppt", "tmin", "tmean", "tmax")
  dataFiles <- lapply(dataFiles, setNames, climvars)
return(dataFiles)
}

prismDatNames <- function(path) {
  data.path <- path
  glob.path <- paste0(data.path, "*", ".csv")  
  fileNames <- list.files(path=path)
  dataFiles <- lapply(Sys.glob(glob.path), read.csv, skip=11, head=F)
  climvars <- c("pdate", "ppt", "tmin", "tmean", "tmax")
  dataFiles <- lapply(dataFiles, setNames, climvars)
  names(dataFiles) <- fileNames
  return(dataFiles)
}