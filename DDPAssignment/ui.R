#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Predicting Horse Power from MPG using mtcars dataset"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderMPG", "Select MPG Value :", 10, 35, value = 20),
            checkboxInput("showModel1", "Show/Hide model 1", value = TRUE),
            checkboxInput("showModel2", "Show/Hide model 2", value =  TRUE)
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("plot1"),
            h3("Prediction from model 1 :"),
            textOutput("pred1"),
            h3("prediction from model 2 :"),
            textOutput("pred2"),
            h3("How This Works (DOCUMENTATION) :"),
            h5("The value of mpg you choose from the slider will be used to predict the HP value"),
            h5("In the backend already 2 models are fitted one with only a MPG value while,"),
            h5("other with a bent shape which is introduced and shown in the plot"),
            h5("you can hide/show the fitted lines by the checkboxes")
        )
    )
))
