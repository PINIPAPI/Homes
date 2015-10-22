library(shiny)

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)
Home <- read.table("D:/cpinilla/Datascience/DevelopingProducts/Homes/viviendas.txt",sep="\t", header = TRUE)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Situation in a country"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("region", "Variable:", 
                    choices=colnames(Home)),
        hr(),
        helpText("Data from DANE 2014.")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("Homes_stat")  
      )
      
    )
  )
)