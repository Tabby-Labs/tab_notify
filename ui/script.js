window.addEventListener('message', function(event) {
    let src = event.data;

    if (src.action == "sendNotification") {
        const container = document.getElementById('notificationContainer');

        // Create new element
        const notify = document.createElement('div');
        notify.classList.add('notification', 'fade-in');

        // Set notification background color
        if (src.type === "custom" && src.color) {
            notify.style.backgroundColor = src.color;
        } else {
            notify.classList.add(src.type || 'default');
        }

        // Create title element if provided
        if (src.title) {
            const title = document.createElement('strong');
            title.textContent = src.title;
            title.classList.add('notification-title');
            notify.appendChild(title);
        }

        // Add message
        const message = document.createElement('p');
        message.textContent = src.msg;
        notify.appendChild(message);

        // Append to the container
        container.appendChild(notify);

        // Remove notification after duration
        setTimeout(() => {
            notify.classList.remove('fade-in');
            notify.classList.add('fade-out');

            setTimeout(() => {
                container.removeChild(notify);
            }, 500);
        }, src.duration);
    }
});
