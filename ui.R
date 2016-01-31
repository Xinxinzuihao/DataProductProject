shinyUI(fluidPage(
  
  # Application title
   titlePanel("Longley's Economic Data: Predict Employment with GNP"),
  
  # Sidebar with a input box for the predictor
    #sidebarLayout(
      sidebarPanel(
        numericInput('GNP', 'GNP Value Input (Range 243-555)', 250, min = 234, max = 555),
        submitButton('Submit'),
        p(strong(em("Documentation:",a("Longley's Economic Dataset",href="https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/longley.html")))),
        p(strong(em("Github repository:",a("Github repository for Shiny App",href="https://github.com/Xinxinzuihao/DataProductProject"))))
        ), 
  
    #  
    # sliderInput("bins","Number of bins:",min = 1, max = 50,value = 30)
    
    # Show a plot of the generated distribution
    mainPanel(
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Employment Prediction from Regression'),
      verbatimTextOutput("pred"),
      plotOutput('distPlot')
    )
  )
)

