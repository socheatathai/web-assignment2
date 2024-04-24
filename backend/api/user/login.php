<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header("Content-Type: application/json");

session_start();

include "../config/conection.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['username']) && !empty($_POST['username']) && isset($_POST['password']) && !empty($_POST['password'])) {

        $username = $_POST['username'];
        $password = $_POST['password'];
        
        // Sanitize user input
        $username = $conn->real_escape_string($username);
        $password = $conn->real_escape_string($password);

        $sql = "SELECT * FROM user WHERE username='$username' AND password='$password'";
        $rs = $conn->query($sql);
        if ($rs && $rs->num_rows > 0) {
            $row = $rs->fetch_assoc();

            // Fetch user's role from user_role table
            $user_id = $row['id'];
            $role_sql = "SELECT r.role_name FROM user_role ur JOIN role r ON ur.role_id = r.role_id WHERE ur.user_id='$user_id'";
            $role_rs = $conn->query($role_sql);
            if ($role_rs && $role_rs->num_rows > 0) {
                $role_row = $role_rs->fetch_assoc();
                $user_role = $role_row['role_name'];
            } else {
                // If user has no role assigned, default to 'User'
                $user_role = 'User';
            }

            // Set session variables
            $_SESSION['username'] = $row['username'];
            $_SESSION['id'] = $row['id'];

            // Prepare response
            $response = array(
                "success" => true,
                "message" => "Login successful",
                "role" => $user_role // Include user's role in the response
            );
            echo json_encode($response);
            exit;
        } else {
            echo json_encode(array("success" => false, "message" => "Invalid username or password"));
            exit;
        }
    } 
    else {
        echo json_encode(array("success" => false, "message" => "Missing username or password"));
        exit;
    }
}
?>
