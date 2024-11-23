#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx
tee -a /var/www/html/index.html << EOT
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <title>Getting Client's IP</title>
    <style>
        p, h1 {
            color: green;
        }
    </style>
</head>
<body>
    <center>
        <h1>Hello, world!</h1>
        <h3>Server time is: </h1>
        <p id="p1"></p>
        <script>
            var date = new Date();
            document.getElementById("p1").innerHTML = date;
        </script>
        <h3>Public IP Address of user is:</h3>
        <p id="ip-address"></p>
    </center>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Fetch the IP address from the API
            fetch("https://api.ipify.org?format=json")
                .then(response => response.json())
                .then(data => {
                    // Display the IP address on the screen
                    document.getElementById("ip-address").textContent = data.ip;
                })
                .catch(error => {
                    console.error("Error fetching IP address:", error);
                });
        });
    </script>
</body>
</html>
EOT