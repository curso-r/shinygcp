
#' App UI
app_ui <- function() {
  shiny::pageWithSidebar(
    shiny::headerPanel('Iris k-means clustering'),
    shiny::sidebarPanel(
      shiny::selectInput('xcol', 'X Variable', names(shinygcp::iris)),
      shiny::selectInput('ycol', 'Y Variable', names(shinygcp::iris),
                         selected=names(shinygcp::iris)[[2]]),
      shiny::numericInput('clusters', 'Cluster count', 3,
                          min = 1, max = 9)
    ),
    shiny::mainPanel(
      shiny::plotOutput('plot1')
    )
  )
}
