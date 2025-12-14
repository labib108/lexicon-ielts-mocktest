document.addEventListener("DOMContentLoaded", function () {
    const partNavs = document.querySelectorAll(".part-nav");
    const tabPanes = document.querySelectorAll(".tab-pane");
    const inputs = document.querySelectorAll(".question-input");

    // Show first part by default
    if (partNavs.length) {
        partNavs[0].classList.add("active");
        partNavs[0].querySelector(".questions").classList.remove("d-none");
        partNavs[0].querySelector(".summary").classList.add("d-none");
    }

    // Part switching
    partNavs.forEach((nav) => {
        nav.querySelector(".part-label").addEventListener("click", function () {
            const part = nav.dataset.part;

            // hide all tab panes
            tabPanes.forEach((pane) => pane.classList.remove("show", "active"));
            document.getElementById(`part${part}`).classList.add("show", "active");

            // reset all navs
            partNavs.forEach((n) => {
                n.classList.remove("active");
                n.querySelector(".questions").classList.add("d-none");
                n.querySelector(".summary").classList.remove("d-none");
            });

            // activate current
            nav.classList.add("active");
            nav.querySelector(".questions").classList.remove("d-none");
            nav.querySelector(".summary").classList.add("d-none");
        });
    });

    // Scroll to question and focus input if exists
    document.querySelectorAll(".question-btn").forEach((btn) => {
        btn.addEventListener("click", function () {
            const targetId = this.dataset.target;
            const questionDiv = document.getElementById(targetId);

            if (questionDiv) {
                // Scroll to the question div
                questionDiv.scrollIntoView({
                    behavior: "smooth",
                    block: "center",
                });

                // Highlight question temporarily
                questionDiv.classList.add("highlight-question");
                setTimeout(
                    () => questionDiv.classList.remove("highlight-question"),
                    1500
                );

                // Focus the first input/select/textarea inside question if exists
                const inputField = questionDiv.querySelector("input, textarea, select");
                if (inputField) {
                    inputField.focus();

                    // For text input/textarea, place cursor at end
                    if (
                        inputField.type === "text" ||
                        inputField.tagName.toLowerCase() === "textarea"
                    ) {
                        const val = inputField.value;
                        inputField.value = "";
                        inputField.value = val;
                    }
                }
            }
        });
    });

    // Track answered questions & update summary
    inputs.forEach((input) => {
        input.addEventListener("input", function () {
            const questionDiv = this.closest(".question");
            if (!questionDiv) return;

            const qId = questionDiv.id;
            const btn = document.querySelector(`.question-btn[data-target="${qId}"]`);
            if (!btn) return;

            // Check if the input has value or is checked
            let hasAnswer = false;

            if (input.type === "text" || input.tagName.toLowerCase() === "textarea") {
                hasAnswer = input.value.trim() !== "";
            } else if (input.type === "radio" || input.type === "checkbox") {
                const groupName = input.name;
                hasAnswer =
                    document.querySelectorAll(`input[name="${groupName}"]:checked`).length > 0;
            } else if (input.tagName.toLowerCase() === "select") {
                if (input.multiple) {
                    hasAnswer = Array.from(input.selectedOptions).length > 0;
                } else {
                    hasAnswer = input.value !== "";
                }
            }

            // Toggle answered-btn class
            if (hasAnswer) {
                btn.classList.add("answered-btn");
            } else {
                btn.classList.remove("answered-btn");
            }

            // update summary count
            const part = btn.dataset.part;
            const partNav = document.querySelector(`.part-nav[data-part="${part}"]`);
            if (partNav) {
                const total = partNav.querySelectorAll(".question-btn").length;
                const answered = partNav.querySelectorAll(".question-btn.answered-btn").length;
                partNav.querySelector(".summary").textContent = `${answered} of ${total} questions`;
            }
        });
    });
});
