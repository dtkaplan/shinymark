# shinymark

Materials for the *Introduction to Shiny and R Markdown* workshop at rstudio::conf 2019

---

## Locating the materials

* Option 1 - :cloud: RStudio Cloud: [bit.ly/shinymark](bit.ly/shinymark)

    - If you do not already have an RStudio.cloud account, you will be prompted to login via Google or create a new account.
    - When you are

* Option 2 - :computer: Local installation: [github.com/dtkaplan/shinymark](github.com/dtkaplan/shinymark)

---

## Outline

### Day 1: January 15, 2019

#### :computer: 09:00 - 10:30: Session 1 - Getting started with Markdown
  - 00 - [Welcome](00-welcome/00-welcome.pdf) Getting started instructions + motivation + demo
  - 01 - Composing prose with Markdown:
    - Text and headers
    - Links and images
    - Math text
    - Tables
    - The Markdown Quick Reference
    - Your turn: From plain text to embellished

#### :coffee: 10:30 - 11:00: Morning break

#### :computer: 11:00 - 12:30: Session 2 - Putting the R in R Markdown
  - 02 - Putting  the R in R Markdown:
    - Embedding R code -- in chunks and inline
    - Chunk and global options
    - Other languages
    - Output options
    - Output formats
    - Your turn: Restructure from plain R Markdown to xaringan slides or Tufte document
  
#### :fork_and_knife: 12:30 - 13:30: Lunch

#### :computer: 13:30 - 15:00: Session 3 - Upping your R Markdown game
  - Tables
  - Parameterized reports
  - Bibliography and citation
  - Templates
  
#### :coffee: 15:00 - 15:30: Afternoon break

#### :computer: 15:30 - 17:00: Session 4 - First dip into interactivity
  - Embedding htmlwidgets in R Markdown documents
  - Embedding Shiny apps in R Markdown documents
  - First practice with shiny widgets. Use `runtime: shiny`
  - Troubleshooting tips + Q & A

### Day 2: January 16, 2019

The activities will be based on files in the `apps/` directory. Each file includes a suffix like `_01`, `_02`, .... 

- Start by opening the `_01` file. Edit that to complete the activity.
- In the follow-up exercises, you can keep on going with the file you started with, *or* if you get lost ... 
- Open up the next file (e.g. `_02`) so that you have a working document for the next activity.

#### :computer: 09:00 - 10:30: Session 1 - Getting started with Shiny
  - 04 - Getting started with Shiny:
    - High level view
    - Anatomy of a Shiny app
    - UI / Server
    - File structure
    - Deploying an app

#### :coffee: 10:30 - 11:00: Morning break

#### :computer: 11:00 - 12:30: Session 2 - Understanding reactivity
  - 05 - Understanding reactivity:
    - Reactivity 101
    - Reactive flow
    - Implementation
    - Render functions
  
#### :fork_and_knife: 12:30 - 13:30: Lunch

#### :computer: 13:30 - 15:00: Session 3 - Designing UI
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

### Install all packages we will need

```
from_cran <- c("shiny", "rmarkdown", 
               "DT", "devtools", "flexdashboard", "gapminder",
               "rticles", "shinydashboard", "shinythemes", 
               "tidyverse", "tufte", "xaringan")

install.packages(from_cran, repos = "http://cran.rstudio.com")
```

### Load all packages we just installed

```
lapply(from_cran, library, character.only = TRUE)
```
