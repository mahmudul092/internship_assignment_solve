<?php
// Check if the form is submitted using POST method
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $carType = isset($_POST['carType']) ? $_POST['carType'] : '';
    $name = isset($_POST['name']) ? $_POST['name'] : '';
    $model = isset($_POST['model']) ? $_POST['model'] : '';
    $year = isset($_POST['year']) ? intval($_POST['year']) : 0;
    $batteryCapacity = isset($_POST['batteryCapacity']) ? floatval($_POST['batteryCapacity']) : null;
    $fuelEfficiency = isset($_POST['fuelEfficiency']) ? floatval($_POST['fuelEfficiency']) : null;

    // Validate data before processing
    if (empty($carType) || empty($name) || empty($model) || $year <= 0) {
        die("Invalid data received");
    }

    // Create connection to MySQL database
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "car_inventory";

    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Use prepared statements to prevent SQL injection
    $stmt = $conn->prepare("INSERT INTO cars (carType, name, model, year, batteryCapacity, fuelEfficiency) VALUES (?, ?, ?, ?, ?, ?)");

    // Bind parameters
    $stmt->bind_param("sssidd", $carType, $name, $model, $year, $batteryCapacity, $fuelEfficiency);

    // Execute the statement
    if ($stmt->execute()) {
        echo "Data inserted successfully";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close prepared statement and connection
    $stmt->close();
    $conn->close();
} else {
    echo "Form not submitted.";
}
?>
