library(shiny)

ui <- navbarPage(
  strong("Wheatstonesche Brückenschaltung"),
  
  #
  tabPanel(strong("Versuch 1"),
           titlePanel(
             h4(
               "Nachweis, dass sich eine Spannung in der Potentiometerschaltung über die Drahtlänge messen lässt"
             )
           ),
           
           mainPanel("Suchen Sie sich 10 verschiedenen Messwerte aus dem Video heraus!",
             tags$video(
               src = "Versuch1.mp4",
               width = "750px",
               height = "520px",
               type = "video/mp4",
               controls = "controls"
             )
           )),
  #
  
  tabPanel(
    strong("Versuch 2"),
    titlePanel(
      h4(
        "Bestimmung unbekannter Widerstände aus dem Verhältnis der Drahtlängen bei abgeglichener Wheatstonescher Brücke"
      )
    ),
    sidebarPanel("Drei Wiederholungsmessungen (A,B,C) sind ausreichend",
      radioButtons(
        "wolo",
        "",
        choices = c("Widerstand Rx\u2081",
                    "Widerstand Rx\u2082"),
        selected = ""
      ),
      
      
      
      conditionalPanel(condition = "input.wolo == 'Widerstand Rx\u2081'",
                       selectInput(
                         "dude", "",
                         c("Messung 1A", "Messung 1B",
                           "Messung 1C")
                       )),
      
      conditionalPanel(condition = "input.wolo == 'Widerstand Rx\u2082'",
                       selectInput(
                         "rada", "",
                         c("Messung 2A", "Messung 2B",
                           "Messung 2C")
                       )),
      
      
      
    ),
    
    conditionalPanel(
      "input.wolo == 'Widerstand Rx\u2081'",
      mainPanel(conditionalPanel("input.dude=='Messung 1A'",
                                 
                                 ((
                                   tags$video(
                                     src = "Rx1A.mp4",
                                     width = "750px",
                                     type = "video/mp4",
                                     height = "520px",
                                     controls = "controls"
                                     
                                   )
                                 ))))
    ),
    
    
    
    conditionalPanel(
      "input.wolo == 'Widerstand Rx\u2081'",
      mainPanel(conditionalPanel("input.dude=='Messung 1B'",
                                 
                                 ((
                                   tags$video(
                                     src = "Rx1B.mp4",
                                     width = "750px",
                                     type = "video/mp4",
                                     height = "520px",
                                     controls = "controls"
                                     
                                   )
                                 ))))
    ),
    
    conditionalPanel(
      "input.wolo == 'Widerstand Rx\u2081'",
      mainPanel(conditionalPanel("input.dude=='Messung 1C'",
                                 
                                 ((
                                   tags$video(
                                     src = "Rx1C.mp4",
                                     width = "750px",
                                     type = "video/mp4",
                                     height = "520px",
                                     controls = "controls"
                                     
                                   )
                                 ))))
    ),
    
    conditionalPanel(
      "input.wolo == 'Widerstand Rx\u2082'",
      mainPanel(conditionalPanel("input.rada=='Messung 2A'",
                                 
                                 ((
                                   tags$video(
                                     src = "Rx2A.mp4",
                                     width = "750px",
                                     type = "video/mp4",
                                     height = "520px",
                                     controls = "controls"
                                     
                                   )
                                 ))))
    ),
    
    conditionalPanel(
      "input.wolo == 'Widerstand Rx\u2082'",
      mainPanel(conditionalPanel("input.rada=='Messung 2B'",
                                 
                                 ((
                                   tags$video(
                                     src = "Rx2B.mp4",
                                     width = "750px",
                                     type = "video/mp4",
                                     height = "520px",
                                     controls = "controls"
                                     
                                   )
                                 ))))
    ),
    
    conditionalPanel(
      "input.wolo == 'Widerstand Rx\u2082'",
      mainPanel(conditionalPanel("input.rada=='Messung 2C'",
                                 
                                 ((
                                   tags$video(
                                     src = "Rx2C.mp4",
                                     width = "750px",
                                     type = "video/mp4",
                                     height = "520px",
                                     controls = "controls"
                                     
                                   )
                                 ))))
    )
    
  ),
  
  
  
  #
  tabPanel(
    strong("Versuch 3"),
    titlePanel(
      h4(
        "Bestimmung unbekannter Widerstände aus der Brückenspannung bei nahezu abgeglichener Wheatstonescher Brücke"
      )
    ),
    br(),
    
    sidebarPanel(
      "",
      sliderInput(
        inputId = "slider",
        label = "Verschiedene Widerstände wählen:",
        min = 0,
        max = 297,
        value = 0,
        step = 33
      )
    ),
    
    
    mainPanel(conditionalPanel("input.slider=='33'",
                               
                               ((
                                 img(
                                   src = "33Ohm.png",
                                   height = 750,
                                   width = 555
                                 )
                               )))),
    
    mainPanel(conditionalPanel("input.slider=='66'",
                               
                               ((
                                 img(
                                   src = "66Ohm.png",
                                   height = 750,
                                   width = 555
                                 )
                               )))),
    
  
    
    mainPanel(conditionalPanel("input.slider=='99'",
                               
                               ((
                                 img(
                                   src = "99Ohm.png",
                                   height = 750,
                                   width = 555
                                 )
                               )))),
    
    mainPanel(conditionalPanel("input.slider=='132'",
                               
                               ((
                                 img(
                                   src = "132Ohm.png",
                                   height = 750,
                                   width = 555
                                 )
                               )))),
    
    mainPanel(conditionalPanel("input.slider=='165'",
                               
                               ((
                                 img(
                                   src = "165Ohm.png",
                                   height = 750,
                                   width = 555
                                 )
                               )))),
    
    mainPanel(conditionalPanel("input.slider=='198'",
                               
                               ((
                                 img(
                                   src = "198Ohm.png",
                                   height = 750,
                                   width = 555
                                 )
                               )))),
    
    mainPanel(conditionalPanel("input.slider=='231'",
                               
                               ((
                                 img(
                                   src = "231Ohm.png",
                                   height = 750,
                                   width = 555
                                 )
                               )))),
    
    mainPanel(conditionalPanel("input.slider=='264'",
                               
                               ((
                                 img(
                                   src = "264Ohm.png",
                                   height = 750,
                                   width = 555
                                 )
                               )))),
    
    mainPanel(conditionalPanel("input.slider=='297'",
                               
                               ((
                                 img(
                                   src = "297Ohm.png",
                                   height = 750,
                                   width = 555
                                 )
                               )))),
    
    
    #
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui = ui, server = server)
