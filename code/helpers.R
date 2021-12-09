# This R.script contains helpful functions for working with contact matrices.
#
#
#

###########################################
# Library all Packages for analysis      #
###########################################

library(tidyverse)
library(janitor)
library(srvyr)
library(networkreporting)
library(socviz)
library(cowplot)
library(gt)
library(broom)
library(corrplot)
 

## function to read in source .RMD file 
source_rmd = function(file, ...) {
  tmp_file = tempfile(fileext=".R")
  on.exit(unlink(tmp_file), add = TRUE)
  knitr::purl(file, output=tmp_file, quiet = T)
  source(file = tmp_file, ...)
}


## top code function 
top_code <- function(x) {
  x <- case_when(
    x > 30 ~ 30,
    TRUE ~ x
  )
}