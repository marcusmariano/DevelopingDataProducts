## Name: Marcus Ney Mariano
## Developing Data Products
## Course Project: Shiny Application
## File: ui.R


library(shiny)

shinyUI(fluidPage(
    
    titlePanel(title = h4("Course Project: Shiny Application - Diamonds dataset", 
                          align = "center")
              ), ## End of titlePanel
    
    sidebarLayout(
        sidebarPanel(
            selectInput("var", "1. Select the variable from the Diamonds dataset", 
            choices = c("carat" = 1, "depth" = 5, "table" = 6,
             "x" = 8, "y" = 9, "z" = 10), selected = 1),
            br(),
            sliderInput("bins", "2. Select the number of BINs for histogram", 
            min = 5 , max = 85, value = 45),
            br(),
            radioButtons("color", "3. Select the color or histogram", 
            choices = c("Green", "Red", "Yellow"), selected = "Green"),
            br(),
            br(),
            br(),
            downloadLink('Download', 'Download Dataset')
            
            ), ## End of sidebarPanel
        mainPanel(
            
            tabsetPanel(type = "tab",
                tabPanel("Summary", verbatimTextOutput("summ")),
                tabPanel("Struture", verbatimTextOutput("str")),
                tabPanel("Data", tableOutput("data")),
                tabPanel("Plot", plotOutput("myhist")),
                selected = "Plot"
                
            ) ## End of tabsetPanel
            
            
          ) ## End of mainPanel
        
    )## End of sidebarLayout
)) ## End of shinyUI and fluidPage