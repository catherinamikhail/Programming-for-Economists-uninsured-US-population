knitr::opts_chunk$set(echo = FALSE, message = FALSE, warning = FALSE)
options(repos = c(CRAN = "https://cran.rstudio.com/"))

# List of CRAN packages
cran_packages <- c("rmarkdown", "tinytex", "rnaturalearth", "rnaturalearthdata", 
                   "maps", "tidyverse", "tidyr", "dplyr", "renv")

# Install missing CRAN packages
installed_cran <- cran_packages %in% rownames(installed.packages())
if (any(!installed_cran)) {
  install.packages(cran_packages[!installed_cran])
}

# Load CRAN packages
invisible(lapply(cran_packages, library, character.only = TRUE))

# Ensure remotes is available to install GitHub packages
if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}
library(remotes)

# Check and install rnaturalearthhires from GitHub if missing
if (!requireNamespace("rnaturalearthhires", quietly = TRUE)) {
  remotes::install_github("ropensci/rnaturalearthhires")  # typo fixed: it's ropensci not reponsci
}
library(rnaturalearthhires)

# Install TinyTeX if not installed
if (!tinytex::is_tinytex()) { 
  tinytex::install_tinytex()
}
