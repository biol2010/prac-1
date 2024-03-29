# install packages as required

# setup an empty char vec for required install.packages
pkgs_to_install <- c()

# check if packages are installed; add to install list if not
if (require(DT) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "DT")
} 

if (require(forcats) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "forcats")
}

if (require(knitr) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "knitr")
} 

if (require(learnr) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "learnr")
}

if (require(markdown) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "markdown")
}

if (require(mime) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "mime")
}

if (require(ragg) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "ragg")
} 

if (require(readxl) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "readxl")
}

if (require(remotes) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "remotes")
} 

if (require(rlang) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "rlang")
} 

if (require(rprojroot) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "rprojroot")
} 

if (require(shiny) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "shiny")
}

if (require(tidyverse) == FALSE) {
  pkgs_to_install <- c(pkgs_to_install, "tidyverse")
}

# use output string to install missing packages
install.packages(pkgs_to_install)

# and boutique solution for the github package
remotes::install_github("rstudio/gradethis", upgrade = "always")