## Name: Marcus Ney Mariano
## Developing Data Products
## Course Project: Shiny Application
## File: server.R


library(shiny)
library(ggplot2)
library(rJava)

shinyServer(
    function(input, output, session) {
        
        
        ## Exemplo of reactive 
        colm <- reactive({
            as.numeric(input$var)
        })
        
         
        output$summ <- renderPrint({
            summary(diamonds)
        })
        
        output$str <- renderPrint({
            str(diamonds)
        })
        
        output$data <- renderTable({
            head(diamonds[colm()], 15)
            
        })
        
        ## Plot a Histogram
        output$myhist <- renderPlot({
            hist(diamonds[ ,colm()], breaks = seq(0, max(diamonds[ ,colm()]), l = input$bins +1),
            col = input$color, main = "Histogram of Diamonds dataset", 
            xlab = names(diamonds[colm()]))
            ##myhist(x(), y())
        })## End of RenderPlot

        
        ## Download the dataset
        output$Download <- downloadHandler(
            filename = function() {
                paste('diamonds-', Sys.Date(), '.csv', sep="")
            },
            content = function(file) {
                print("in download")
                print(file) #this file does not exist ???
                Data<- data.frame(diamonds)
                print(head(Data))
                write.csv(Data, file)
            }## End of function
        )## End of downloadHandler
        
        
}) ## End of shinyServer