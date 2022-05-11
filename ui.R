library(fpp3)
library(shiny)
library(bslib)
library(shiny.semantic)
data("aus_livestock")


shinyUI(fluidPage(
  h2("This app maps out the count of pigs in Queensland Australia from 1976 to the end of 2018. The full time series and box-cox are presented below, and you may choose to view transformed graphs from the checkbox."),
  theme = bs_theme( bg = "black", fg = "white", primary = "red",
                     base_font = font_google("Space Mono"),
  ),
    titlePanel("Australian Livestock"),
    sidebarLayout(
      sidebarPanel(
        checkboxGroupInput(
      inputId = "graph",
      label = "Select a graph to view",
      choices = list("Seasonal", "Autocorrelation", "Decomposition", "Naive", "Seasonal Naive","Mean", "Drift", "Holts", 
                    "Holts/Winters","Auto Arima", "Manual Arima", "Full Time Series", "Box-Cox"),
      select = NULL)
                 
      ),
        
        mainPanel(
          
          h3("Time Series Models"
          ),
          plotOutput("graph"),
          textOutput("text"),
)
)
)
)
