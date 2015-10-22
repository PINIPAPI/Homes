library(shiny)

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)
 Home <- read.table("Data/VIVIENDAS.txt",sep="\t", header = TRUE)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$Homes_stat <- renderPlot({
    
    # Render a barplot
    hist(Home[,input$region], 
            main=input$region,
            xlab="Number",
            col = "green")
  })
})