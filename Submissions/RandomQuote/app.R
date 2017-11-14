
library(shiny)
library(shinythemes)

ui <- fluidPage(
  theme = shinytheme("slate"),
   
  titlePanel("Want to feel motivated today?"),
  
  
      mainPanel(
        
        textOutput("text"),
        
        actionButton("shoot", "SHOOT")
      )
   )



server <- function(input, output) {
 
   observeEvent(input$shoot, {
    
    
    quotes<- list("Everybody dies but not everybody lives-Drake",
                  "I took my bruises,I took my lumps,fell down and got right back up -Eminem",
                  "Far from a Havard student,just had the balls to do it-Jay-Z",
                  "No matter ho whard it gets ,stick your chest out,keep ypur head up and handle it-Tupac",
                  "Being happy is the goal,but greatness is the mission-Childish Gambino",
                  "Reach for the stars so if you fall,you land in the clouds-Kanye West",
                  "Keep Intergrity at every cost-Nas","Love yourz-J Cole")
    a<- sample(quotes,1)
    output$text <- renderPrint(a)
    
  })
   
  
}

# Run the application 
shinyApp(ui = ui, server = server)

