library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calculating the amount received for a particular rate, after a period of time"),
  sidebarPanel(
    h3('Enter the details'),
    textInput(inputId="pr", label = "Input Principal amount"),
    h5('The principal amount has to be a number'),
    textInput(inputId="rt", label = "Input Rate of interest (in %)"),
    h5('The rate of interest is expressed as a percentage. For example, if you want interest to be charged at 4% per year, enter 4'),
    textInput(inputId="ti", label = "Input Time (in years) for which you want the interest to be compounded"),
    h5('Time denotes the number of years for which interest will be levied. If it is 12 years, enter 12')
  ),
  mainPanel(
    h3('Illustrating outputs'),
    h4('You entered principal as:'),
    verbatimTextOutput("opr"),
    h4('You entered rate of interest as:'),
    verbatimTextOutput("ort"),
    h4('You entered the time (in years) as:'),
    verbatimTextOutput("oti"),
    h4('The amount recievable will be:'),
    textOutput('am')
  )
))