<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="styles.css" />
  </head>
  <body>
    <!-- ASP snippet to display date and time -->
    <% 
    dim dt
    dt = Now() ' gets the current date and time
    Response.Write("<p class='date-time'>" & dt & "</p>") ' writes the date and time to the webpage
    %>

    <div class="container">
      <h1>Mass Calculator</h1>
      <form action="calculate.asp" method="post">
        <label for="age">Age:</label><br />
        <input type="number" id="age" name="age" placeholder="Enter your Age" required /><br />

        <label for="weight">Weight (kg):</label><br />
        <input type="number" id="weight" name="weight" 
        placeholder="Enter your Weight" required/><br />

        <label for="height">Height (cm):</label><br />
        <input type="number" id="height" name="height" 
        placeholder="Enter your Height" required/><br />

        <label for="activity">Activity Level:</label><br />
        <select id="activity" name="activity">
          <option value="low">Low</option>
          <option value="medium">Medium</option>
          <option value="high">High</option></select>
          <br/>
        <input type="submit" value="Calculate" />
        <input type="reset" value="Reset" />
      </form>
    </div>
    <div>
      <footer>
        <p>
          "The last three or four reps is what makes the muscle grow. This area
          of pain divides a champion from someone who is not a champion." -
          Arnold Schwarzenegger
        </p>
      </footer>
    </div>
  </body>
</html>
