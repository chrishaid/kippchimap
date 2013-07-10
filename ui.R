library(shiny)

shinyUI(pageWithSidebar(

  # Applicaiton Title
  headerPanel("MAP Shiny Server Test App"),
  
  # Selections side bar
  sidebarPanel(
    selectInput(inputId = "school",
                label="School:",
                choices=c("KAPS", "KAMS", "KCCP"),
                selected = "KAPS"),
    
    selectInput(inputId = "subject",
                label = "Subject:",
                choices = c("Mathematics", "Reading"),
                selected = "Mathematics"),
    
    selectInput(inputId = "grade",
                label = "Grade Level:",
                choices = c("K", "1", "2", "5", "6", "7", "8"),
                selected = "K")
    ),
  
  # Main plotting Panel
  mainPanel(
    plotOutput(outputId = "main_plot", height = "600px")
    )
  )
)
