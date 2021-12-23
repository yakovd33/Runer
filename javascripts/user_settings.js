function toggle_anonymous_mode () {
    $.ajax({
        url: 'ajax/toggle_anonymouse_mode.php',
        processData: false,
        contentType: false,
        success: function (response) {
            console.log(response);
        }
    })
}

function toggle_parking_mode () {
    $.ajax({
        url: 'ajax/toggle_parking_mode.php',
        processData: false,
        contentType: false,
        success: function (response) {
            console.log(response);
        }
    })
}