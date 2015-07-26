shinyUI(pageWithSidebar(
  headerPanel("Know your Body Mass Index"),
  sidebarPanel(
    radioButtons("units",
                 label = h3("Choose whatever you are comfortable with:"),
                 choices = list("Units in Kilogram and cemtimeters" = 1, "Units in Pound and inches" = 2),
                 selected = 1),
    textInput(inputId="weight", label = "Weight"),
    textInput(inputId="height", label = "Height"),
    submitButton("Submit")
  ),
  mainPanel(
    helpText('This page will help you calculate your BMI. BMI numbers are health indicator for people aged 20 and above. You can chose between Metic system and Imperical system. If you BMI is less than 18 or more than 24, you are unhealthy.'),
    p('Your BMI:'),
    textOutput('bmi')
  )
))
