document.addEventListener("DOMContentLoaded", function () {
    const countdownElement = document.getElementById("countdown");
    const totalMinutes = parseInt(countdownElement.dataset.time, 10) || 30;
    let totalSeconds = totalMinutes * 60;

    const toastEl = document.getElementById("timeWarningToast");
    const toast = toastEl
        ? new bootstrap.Toast(toastEl, { delay: 5000 })
        : null;
    const form = document.querySelector("form");

    function updateCountdown() {
        const minutes = Math.floor(totalSeconds / 60);
        const seconds = totalSeconds % 60;
        countdownElement.textContent = `${String(minutes).padStart(
            2,
            "0"
        )} : ${String(seconds).padStart(2, "0")}`;

        // Show toast at 1 minute remaining
        if (totalSeconds === 60 && toast) {
            toast.show();
        }

        // Time's up
        if (totalSeconds <= 0) {
            clearInterval(timer);
            countdownElement.textContent = "Time's up!";
            if (form) form.submit(); // auto-submit form
        }

        totalSeconds--;
    }

    // Start timer when start button is clicked
    const startBtn = document.getElementById("fullscreenBtn2");
    let timerStarted = false;
    let timer;

    if (startBtn) {
        startBtn.addEventListener("click", function (e) {
            e.preventDefault();
            if (!timerStarted) {
                timerStarted = true;
                updateCountdown(); // immediate update
                timer = setInterval(updateCountdown, 1000);
            }
        });
    }
});
