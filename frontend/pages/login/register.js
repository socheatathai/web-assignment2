document.addEventListener("DOMContentLoaded", function () {
  const registrationForm = document.getElementById("registrationForm");

  registrationForm.addEventListener("submit", function (event) {
    event.preventDefault();

    const name = document.getElementById("name").value;
    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    const formData = new FormData();
    formData.append("name", name);
    formData.append("username", username);
    formData.append("password", password);

    fetch("http://localhost/web-assignment2/backend/api/user/register.php", {
      method: "POST",
      body: formData,
    })
      .then((response) => response.json())
      .then((data) => {
        if (data.success) {
          window.location.href =
            "http://127.0.0.1:5500/frontend/pages/login/login.html";
          // Display success message
          alert("Registration successful!");

          // Reset the form
          registrationForm.reset();
        } else {
          // Display error message
          alert("Registration failed. Please try again.");
        }
      })
      .catch((error) => {
        // Display error message
        alert("An error occurred. Please try again.");
      });
  });
});
