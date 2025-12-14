// back.js
document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('form');
    if (!form) return;

    // Push a dummy state so we can detect back/forward
    history.pushState(null, null, location.href);

    // Create modal dynamically
    const modalHtml = `
    <div class="modal fade" id="backModal" tabindex="-1" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content border-warning">
          <div class="modal-header bg-warning text-dark">
            <h5 class="modal-title">⚠️ Leave Test?</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            Your answers will be submitted automatically if you leave. Are you sure you want to go back?
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
            <button type="button" id="confirmLeaveBtn" class="btn btn-warning">Yes, Leave</button>
          </div>
        </div>
      </div>
    </div>`;
    document.body.insertAdjacentHTML('beforeend', modalHtml);

    const backModalEl = document.getElementById('backModal');
    const backModal = new bootstrap.Modal(backModalEl);
    const confirmLeaveBtn = document.getElementById('confirmLeaveBtn');

    // Detect back/forward button
    window.addEventListener('popstate', function (event) {
        // Show custom modal
        backModal.show();

        confirmLeaveBtn.onclick = function () {
            // Submit the form and allow navigation
            backModal.hide();
            form.submit();
        };

        // Re-push state to prevent accidental back before confirmation
        history.pushState(null, null, location.href);
    });
});
