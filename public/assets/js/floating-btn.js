document.addEventListener("DOMContentLoaded", function () {
    const nextBtn = document.getElementById("floatingNext");
    const prevBtn = document.getElementById("floatingPrev");

    // Flatten all questions across all tabs
    const allQuestions = Array.from(document.querySelectorAll(".question-btn"));

    // Helper: find current active question globally
    function getCurrentActiveIndex() {
        let active = allQuestions.find(q => q.classList.contains("active-question"));
        if (!active) {
            // fallback: first question if none active
            active = allQuestions[0];
            if (active) active.classList.add("active-question");
        }
        return active ? allQuestions.indexOf(active) : -1;
    }

    // Helper: activate question by index
    function activateQuestion(index) {
        if (index < 0 || index >= allQuestions.length) return;
        const btn = allQuestions[index];

        // Remove active from all buttons
        allQuestions.forEach(q => q.classList.remove("active-question"));
        btn.classList.add("active-question");

        // Make the corresponding part active
        const part = btn.dataset.part;
        const tabPanes = document.querySelectorAll(".tab-pane");
        const partNavs = document.querySelectorAll(".part-nav");

        tabPanes.forEach(p => p.classList.remove("show", "active"));
        document.getElementById(`part${part}`).classList.add("show", "active");

        partNavs.forEach(nav => {
            nav.classList.remove("active");
            nav.querySelector(".questions").classList.add("d-none");
            nav.querySelector(".summary").classList.remove("d-none");
        });

        const currentNav = document.querySelector(`.part-nav[data-part="${part}"]`);
        if (currentNav) {
            currentNav.classList.add("active");
            currentNav.querySelector(".questions").classList.remove("d-none");
            currentNav.querySelector(".summary").classList.add("d-none");
        }

        // Scroll and highlight
        const questionDiv = document.getElementById(btn.dataset.target);
        if (!questionDiv) return;

        questionDiv.scrollIntoView({ behavior: "smooth", block: "center" });

        questionDiv.classList.add("highlight-question");
        setTimeout(() => questionDiv.classList.remove("highlight-question"), 1500);

        // Focus first input inside question
        const inputField = questionDiv.querySelector("input, textarea, select");
        if (inputField) {
            inputField.focus();
            if (inputField.type === "text" || inputField.tagName.toLowerCase() === "textarea") {
                const val = inputField.value;
                inputField.value = "";
                inputField.value = val;
            }
        }
    }

    // Next button
    nextBtn.addEventListener("click", () => {
        const currentIndex = getCurrentActiveIndex();
        if (currentIndex < allQuestions.length - 1) {
            activateQuestion(currentIndex + 1);
        }
    });

    // Previous button
    prevBtn.addEventListener("click", () => {
        const currentIndex = getCurrentActiveIndex();
        if (currentIndex > 0) {
            activateQuestion(currentIndex - 1);
        }
    });

    // Clicking a question button marks it globally active
    allQuestions.forEach(btn => {
        btn.addEventListener("click", () => {
            allQuestions.forEach(q => q.classList.remove("active-question"));
            btn.classList.add("active-question");
        });
    });
});
