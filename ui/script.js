window.addEventListener('message', function(event) {
    let src = event.data;

    if (src.action == "sendNotification") {
        const container = this.document.getElementById('notificationContainer');
        // Create new element
        const notify = this.document.createElement('div');

        // notification
        notify.classList.add('notification'); 
        if (src.type == "default") {
            notify.classList.add('default'); 
        } else if (src.type == "primary") {
            notify.classList.add('primary');
        } else if (src.type == "success") {
            notify.classList.add('success');
        } else if (src.type == "error") {
            notify.classList.add('error');
        }
        // Write text
        notify.textContent = src.msg;
        notify.classList.add('fade-in');

        // Append to the container
        container.appendChild(notify);

        // timeout
        this.setTimeout(() => {
            notify.classList.remove('fade-in');
            notify.classList.add('fade-out');

            this.setTimeout(() => {
                container.removeChild(notify);
            }, 500);
        }, src.duration);
    }
})