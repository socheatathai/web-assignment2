<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');
header('Content-Type: application/json');

include "../config/conection.php";

// Check if the request method is POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the JSON data from the request body
    $json = file_get_contents('php://input');
    $data = json_decode($json, true);

    // Check if name, username, and password are set in the data
    if (isset($data['name']) && isset($data['username']) && isset($data['password'])) {
        // Sanitize and escape the data to prevent SQL injection
        $name = $conn->real_escape_string($data['name']);
        $username = $conn->real_escape_string($data['username']);
        $password = $conn->real_escape_string($data['password']);

        // Prepare the SQL query to retrieve the user with the provided name and username
        $sql = "SELECT * FROM `user` WHERE `name` = '$name' AND `username` = '$username'";

        // Execute the SQL query
        $result = $conn->query($sql);

        // Check if a user is found with the given name and username
        if ($result->num_rows > 0) {
            // Update the user's password with the new password
            $user = $result->fetch_assoc();
            $id = $user['id'];

            // Prepare the SQL query to update the user's password
            $updateSql = "UPDATE `user` SET `password` = '$password' WHERE `id` = $id";

            // Execute the SQL query to update the user's password
            if ($conn->query($updateSql) === true) {
                // If the query executed successfully, return a success message
                $response = array("success" => true);
                echo json_encode($response); // Output JSON response
                exit(); // Terminate script execution after sending response
            } else {
                // If there was an error with the SQL query, return an error message
                $response = array("error" => "Failed to update password: " . $conn->error);
                echo json_encode($response); // Output JSON response
                exit(); // Terminate script execution after sending response
            }
        } else {
            // If no user is found with the given name and username, return an error message
            $response = array("error" => "Invalid name or username");
            echo json_encode($response); // Output JSON response
            exit(); // Terminate script execution after sending response
        }
    } else {
        // If any of the required parameters are missing in the data, return an error message
        $response = array("error" => "Missing name, username, or password parameters");
        echo json_encode($response); // Output JSON response
        exit(); // Terminate script execution after sending response
    }
} else {
    // If the request method is not POST, return an error message
    $response = array("error" => "Invalid request method");
    echo json_encode($response); // Output JSON response
    exit(); // Terminate script execution after sending response
}
?>