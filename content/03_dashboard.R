library(shiny)
library(shinydashboard)
library(leaflet)
library(ggplot2)

ui <- dashboardPage(
  dashboardHeader(title = "Case Study"),
  dashboardSidebar(),
  dashboardBody(
    fluidRow(
      box(tableOutput('table')),
      box(leafletOutput('map'))
    ),
    fluidRow(
      box(plotOutput('counts'))
    )
  )
)

server <- function(input, output) {
  fires <- read.csv("../data/fires.csv")
  
  m <- leaflet() %>%
    addTiles() %>%
    addMarkers(lng = fires$LONGITUDE, lat = fires$LATITUDE,
               clusterOptions = markerClusterOptions()) %>%
    addProviderTiles(providers$Esri.NatGeoWorldMap)
  
  output$table <- renderTable(sample_n(fires, 10))
  
  output$map <- renderLeaflet(
    m
  )
  output$counts <- renderPlot(
    ggplot(fires, aes(x = STAT_CAUSE_DESCR)) + 
      geom_bar( stat = "count") + 
      coord_flip() +
      theme_minimal()
  )
}

shinyApp(ui, server)