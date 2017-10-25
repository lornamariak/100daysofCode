
library(shiny)
library(mailR)
library(shinythemes)


ui <- fluidPage( 
  theme = shinytheme("spacelab"),
   
   # Application title
   titlePanel("Mail App "),
   
      mainPanel( 
        
        textInput("from","From:"),
        textInput("to","To"),
        textInput("subject","Subject"),
        textAreaInput("body","Message"),
        actionButton("send","SEND")
        
      )
   )



server <- function(input, output) {
   
   observeEvent(input$send,{
     send.mail(from = input$from ,
               to = c(input$to),
               subject = input$subject,
               body = input$body,
               smtp = list(host.name = "smtp.gmail.com", port = 587,user.name = "lorna1661maria", passwd = "trignometry", ssl = TRUE),
               authenticate = TRUE,
               send = TRUE)
              
     showNotification("Message Sent")
     
   })
  
}

# Run the application 
shinyApp(ui = ui, server = server)

