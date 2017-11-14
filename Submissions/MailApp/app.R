
library(shiny)
library(mailR)
library(shinythemes)


ui <- fluidPage( 
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "mail.css")
  ),
  theme = shinytheme("cerulean"),
  
   
   # Application title
   titlePanel(HTML(
     "<h3>Mail App</h3>")
     ),
   
      mainPanel(  width="100px", 
        tags$div( id = "main",
          textInput("from","From:"),textInput("to","To")),
          tags$div( id = "sub",
        textInput("cc","cc"),textInput("bcc","Bcc")),
         
           textInput("subject","Subject"),
          textAreaInput("body","Message"),
          actionButton("send","SEND")
        
        
       
      
      )
   )



server <- function(input, output) {
   
   observeEvent(input$send,{
     send.mail(from = input$from ,
               to = c(input$to),
               cc = c(input$cc),
               bcc = c(input$bcc),
               subject = input$subject,
               body = input$body,
               smtp = list(host.name = "smtp.gmail.com", port = 587),
               authenticate = FALSE,
               send = TRUE)
              
     showNotification("Message Sent")
     
   })
  
}

# Run the application 
shinyApp(ui = ui, server = server)

