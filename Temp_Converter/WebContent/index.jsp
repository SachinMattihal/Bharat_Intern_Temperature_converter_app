<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Temperature Converter</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
  <div class="container">
    <h1>Temperature Converter</h1>
    <form action="convert" method="post">
      <label for="celsius">Enter temperature in Celsius:</label>
      <input type="number" name="celsius" required>
       <button type="submit">Convert</button>
      <label>Temperature in fahrenheit:</label>
       <output>${fahrenheit}°F</output>
       <button type="reset" class="reset" id="resetButton">Reset</button>
    </form>
  </div>
  <script>
    document.getElementById("resetButton").addEventListener("click", function() {
      document.querySelector('output').textContent = "";
    });
  </script>
</body>
</html>
