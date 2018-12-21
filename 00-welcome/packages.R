# Install packages that will be used in the workshop
from_cran <- c("shiny", "rmarkdown", 
               "DT", "devtools", "flexdashboard", "gapminder",
               "rticles", "shinydashboard", "shinythemes", 
               "tidyverse", "tufte", "xaringan")

install.packages(from_cran, repos = "http://cran.rstudio.com")

# Load packages

library(shiny)
library(rmarkdown)
library(DT)
library(devtools)
library(flexdashboard)
library(gapminder)
library(rticles)
library(shinydashboard)
library(shinythemes)
library(tidyverse)
library(tufte)
library(xaringan)
