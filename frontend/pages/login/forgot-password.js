// document.addEventListener("DOMContentLoaded", function () {
//   const forgotPasswordForm = document.getElementById("forgotPasswordForm");

//   forgotPasswordForm.addEventListener("submit", function (event) {
//     event.preventDefault();

//     const name = document.getElementById("name").value;
//     const username = document.getElementById("username").value;
//     const password = document.getElementById("password").value;

//     const data = {
//       name: name,
//       username: username,
//       password: password,
//     };

//     fetch(
//       "http://localhost/web-assignment2/backend/api/user/forgot_password.php",
//       {
//         method: "POST",
//         headers: {
//           "Content-Type": "application/json",
//         },
//         body: JSON.stringify(data),
//       }
//     )
//       .then((response) => response.json())
//       .then((jsonResponse) => {
//         // Handle the JSON response from the PHP script
//         console.log(jsonResponse);
//       })
//       .catch((error) => {
//         // Handle any errors
//         console.error(error);
//       });
//   });
// });
document.addEventListener("DOMContentLoaded", function () {
  const forgotPasswordForm = document.getElementById("forgotPasswordForm");

  forgotPasswordForm.addEventListener("submit", function (event) {
    event.preventDefault();

    const name = document.getElementById("name").value;
    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    const data = {
      name: name,
      username: username,
      password: password,
    };

    fetch(
      "http://localhost/web-assignment2/backend/api/user/forgot_password.php",
      {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(data),
      }
    )
      .then((response) => response.json())
      .then((jsonResponse) => {
        if (jsonResponse.success) {
          // Password changed successfully, redirect to login page and display success message
          window.location.href =
            "http://127.0.0.1:5500/frontend/pages/login/login.html";
          alert("Password has been changed successfully!");
        } else if (jsonResponse.error) {
          // Invalid name or username, display error message
          alert("Invalid name or username");
        } else {
          // Handle other possible response scenarios
          console.log(jsonResponse);
        }
      })
      .catch((error) => {
        // Handle any errors
        console.error(error);
      });
  });
});