function bookmark (hash) {
    $.ajax({
        url: 'ajax/bookmark.php?h=' + hash,
        contentType: false,
        processData: false,
        success: function (response) {
            console.log(response);
        }
    })
}