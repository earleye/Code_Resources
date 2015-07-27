#Function to install multiple packages at the same time
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# usage
packages <- c("ggplot2", "plyr", "reshape2", "RColorBrewer", "scales", "grid", "DBI", "gmodels", "car", "RCurl", "gdata", "lattice", "knitr", "irr", "ReporteRs", "mclust", "arm", "Hmisc", "reshape", "reshape2", "dplyr", "xlsx", "tidyr", 
              "RMySQL", "ICC", "AER", "sandwich", "psych")
ipak(packages)
