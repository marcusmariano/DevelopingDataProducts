---
title       : Peer Assessments
subtitle    : Reproducible Pitch Presentation
author      : Marcus Mariano
job         : Mechanic Engineer
---

### Reproducible Pitch Presentation

This application is part of the course project in Developing Data Products of Data Science Specialization


### Files in the directory

These are some file in the this directory, the most important is:

1. Files

    * index.Rmd
    * index.md
    * index.html

2.  Directories

    * assets
    * libraries


### Run Application
 
Everyone can run this application open up in the RStudio and follow the steps:

- Go to the directory of the files
 
- Set the working directory

> setwd("~/sample/project")

- Load the libraries

> library(devtools); library(slidify);library(knitr)

- Run Slidify command to .Rmd file:

> slidify('index.Rmd')

- Open up Presentation in the browser with the command:

> browseURL('index.html')
