<%@ Language=VBScript %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="second_style.css" />
</head>
<body>
  <% 
  dim dt
  dt = Now() ' gets the current date and time
  Response.Write("<p class='date-time'>" & dt & "</p>") ' writes the date and time to the webpage

  ' Check if the form is submitted
  if Request.ServerVariables("REQUEST_METHOD") = "POST" then
    ' Retrieve form inputs
    dim age, weight, height, activity
    age = CInt(Request.Form("age"))
    weight = CDbl(Request.Form("weight"))
    height = CDbl(Request.Form("height"))
    activity = Request.Form("activity")

    ' Calculate BMI
    dim bmi
    bmi = weight / ((height / 100) * (height / 100))

    ' Display result table
    Response.Write("<div class='container'>")
    Response.Write("<h1>Result</h1>")
    Response.Write("<table class='result-table'>")
    Response.Write("<tr><th>Age</th><th>Weight (kg)</th><th>Height (cm)</th><th>Activity Level</th><th>BMI</th></tr>")
    Response.Write("<tr><td>" & age & "</td><td>" & weight & "</td><td>" & height & "</td><td>" & activity & "</td><td>" & FormatNumber(bmi, 2) & "</td></tr>")
    Response.Write("</table>")

    ' BMI recommendation message
    dim recommendation
    if bmi < 18.5 then
      recommendation = "You are underweight. It is recommended to gain weight."
    elseif bmi >= 18.5 and bmi < 25 then
      recommendation = "You have a normal weight. Keep it up!"
    elseif bmi >= 25 and bmi < 30 then
      recommendation = "You are overweight. It is recommended to lose weight."
    else
      recommendation = "You are obese. It is strongly recommended to lose weight."
    end if

    Response.Write("<p class='alert'>" & recommendation & "</p>")

    ' Go back button
    Response.Write("<a class='button' href='index.asp'>Go Back</a>")
    Response.Write("</div>")
  end if
  %>

  <div class="footer">
    <footer>
    <p>"Success is not final, failure is not fatal: It is the courage to continue that counts." - Winston Churchill</p>
  </footer>
  </div>
</body>
</html>
