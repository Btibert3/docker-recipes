# only fail if needed
options(warn=2) 
# what do we want
P = c("dplyr", "tidyr", "stringr", "lubridate", "keras", 
      "tfdatasets", "plumber", "ggplot2", "readr", "rsample", "devtools")
# install it
install.packages(P)

