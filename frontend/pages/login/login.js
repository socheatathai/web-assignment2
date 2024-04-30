document.addEventListener("DOMContentLoaded", function () {
  const loginForm = document.getElementById("loginform");
  const showPasswordCheckbox = document.getElementById("showPassword");
  const passwordInput = document.getElementById("password");

  loginForm.addEventListener("submit", function (event) {
    event.preventDefault();

    const username = document.getElementById("username").value;
    const password = passwordInput.value;

    const formData = new FormData();
    formData.append("username", username);
    formData.append("password", password);

    fetch("http://localhost/web-assignment2/backend/api/user/login.php", {
      method: "POST",
      body: formData,
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Success:", data);

        if (data.success) {
          console.log("User role:", data.role);
          // Check user role
          if (data.role.toLowerCase() === "admin") {
            // Redirect admin to the dashboard
            window.location.href =
              "http://127.0.0.1:5500/frontend/Dashboard/index.html";
          } else {
            console.log("Redirecting non-admin user to homepage...");
            // Redirect non-admin users to the homepage
            window.location.href = "http://127.0.0.1:5500/frontend/index.html";
          }
        } else {
          alert(data.message);
        }
      })
      .catch((error) => {
        console.error("Error logging in:", error);
      });
  });

  showPasswordCheckbox.addEventListener("change", function () {
    if (this.checked) {
      passwordInput.type = "text";
    } else {
      passwordInput.type = "password";
    }
  });
});
