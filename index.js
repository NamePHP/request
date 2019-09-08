$(function () {

    $('#request_1').on('click', function () {

        $.ajax({
            url: "request_db.php",
            type: "POST",
            data: {type: 1},
            success: function (data) {
                doData(data);
            }
        });
    });
    $('#request_2').on('click', function () {

        $.ajax({
            url: "request_db.php",
            type: "POST",
            data: {type: 2},
            success: function (data) {
                doData(data);
            }
        });
    });
    $('#request_3').on('click', function () {

        $.ajax({
            url: "request_db.php",
            type: "POST",
            data: {type: 3},
            success: function (data) {
                doData(data);
            }
        });
    });
});

function doData(data) {
    $('#result').html(data);
}