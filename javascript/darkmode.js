document.addEventListener("DOMContentLoaded", () => {
    const darkModeToggle = document.getElementById("dark-mode-toggle");
  
    // Check session state to apply dark mode
    if (localStorage.getItem("darkMode") === "true") {
      document.body.classList.add("dark-mode");
      darkModeToggle.checked = true;
    }
  
    darkModeToggle.addEventListener("change", () => {
      const isDarkMode = darkModeToggle.checked;
      document.body.classList.toggle("dark-mode", isDarkMode);
  
      // Save state in localStorage and server
      localStorage.setItem("darkMode", isDarkMode);
  
      let xhr = new XMLHttpRequest();
      xhr.open("POST", "controller/darkmode.php", true);
      xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
      xhr.send(`darkMode=${isDarkMode}`);
    });
  });
  