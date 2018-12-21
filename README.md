# shinymark

Materials for the *Introduction to Shiny and R Markdown* workshop at RStudio::conf 2019

---

## Locating the materials

* Option 1 - :cloud: RStudio Cloud: [bit.ly/shiny-rmd-cloud](bit.ly/shiny-rmd-cloud)

* Option 2 - :computer: Local installation: [bit.ly/shiny-rmd-repo](bit.ly/shiny-rmd-repo)

---

## Outline

### Day 1: January 15, 2019

#### :computer: 09:00 - 10:30: Session 1 - Getting started with Markdown
  - 00 - [Welcome](00-welcome/00-welcome.pdf) Getting started instructions + motivation + demo
  - 01 - Composing your prose with Markdown:
    - Text and headers
    - Links and images
    - Math text
    - Tables
    - The Markdown Quick Reference
    - Your turn: From plain text to embellished

#### :coffee: 10:30 - 11:00: Morning break

#### :computer: 11:00 - 12:00: Session 2 - Putting the R in R Markdown
  - 02 - Structuring your analysis with R Markdown:
    - Embedding R code -- in chunks and inline
    - Chunk and global options
    - Other languages
    - Output options
    - Output formats
    - Your turn: Restructure from plain R Markdown to xaringan slides or Tufte document
  
#### :fork_and_knife: 12:00 - 13:00: Lunch

#### :computer: 13:00 - 15:00: Session 3 - Upping your R Markdown game
  - Tables
  - Bibliography and citation
  - Templates
  - Parameterized reports

#### :coffee: 15:00 - 15:30: Afternoon break

#### :computer: 15:30 - 17:00: Session 4 - First dip into interactivity
  - Dashboards
  - Embedding htmlwidgets in documents
  - Embedding Shiny apps in documents
  - Troubleshooting tips + Q & A

### Day 2: January 16, 2019

Maybe an RMarkdown shiny document so that we can isolate the UI components and server logic from the programming involved in an app.

#### :computer: 09:00 - 10:30: Session 1 - Getting started with Shiny
  - 04 - Getting started with Shiny:
    - High level view
    - Anatomy of a Shiny app
    - UI / Server
    - File structure
    - Deploying an app

#### :coffee: 10:30 - 11:00: Morning break

#### :computer: 11:00 - 12:00: Session 2 - Understanding reactivity
  - 05 - Understanding reactivity:
    - Reactivity 101
    - Reactive flow
    - Implementation
    - Render functions
  
#### :fork_and_knife: 12:00 - 13:00: Lunch

#### :computer: 13:00 - 15:00: Session 3 - Designing UI
  - Interface builder functions
  - Tabs
  - shinythemes

#### :coffee: 15:00 - 15:30: Afternoon break

#### :computer: 15:30 - 17:00: Session 4 - Dashboards
  - What's in a dashboard?
  - flexdashboards
  - Where to go next?

---

## Setup instructions

### Install

```
from_cran <- c("shiny", "rmarkdown", 
               "DT", "devtools", "flexdashboard", "gapminder",
               "rticles", "shinydashboard", "shinythemes", 
               "tidyverse", "tufte", "xaringan")

install.packages(from_cran, repos = "http://cran.rstudio.com")
```

### Load

```
library(shiny)
library(rmarkdown)
... # load the remaining packages similarly
```
