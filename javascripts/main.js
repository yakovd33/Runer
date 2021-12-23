function toggle_text (element, text1, text2) {
    if ($(element).text() == text1) {
        $(element).text(text2);
    } else {
        $(element).text(text1);
    }
}

function toggle_html (element, text1, text2) {
    if ($(element).html() == text1) {
        $(element).html(text2);
    } else {
        $(element).html(text1);
    }
}