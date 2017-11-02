

library(shiny)
library(shinythemes)
fields <- c("name", "address", "phone")




#define Ui here
ui <- fluidPage(
  theme = shinytheme("spacelab"),
   # Application title
   titlePanel("Phone Book"),
   
   
   sidebarLayout(
      sidebarPanel(
        textInput("name", "Name", ""),
        textInput("address", "Address", ""),
        textInput("phone", "Phone Number", ""),
        actionButton("save", "Save")
      ),
      
      # Show table
      mainPanel(
        
        DT::dataTableOutput("responses", width = 500), tags$hr()
         
      )
   )
)

# Define server logic 
server <- function(input, output,session) {
   
  saveData <- function(data) {
    data <- as.data.frame(t(data))
    if (exists("responses")) {
      responses <<- rbind(responses, data)
    } else {
      responses <<- data
    }
  }
  
  loadData <- function() {
    if (exists("responses")) {
      responses
    }
  }
  
  
  # Whenever a field is filled, aggregate all form data
  formData <- reactive({
    data <- sapply(fields, function(x) input[[x]])
    data
  })
  
  # When the Save button is clicked, save the form data
  observeEvent(input$save, {
    saveData(formData())
  })
  
  # Show the previous responses
  # (update with current response when save is clicked)
  output$responses <- DT::renderDataTable({
    input$save
    loadData()
  })     
}

# Run the application 
shinyApp(ui = ui, server = server)

