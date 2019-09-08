<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>request</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
    <script src="index.js"></script>
</head>
<body>
<h2>Request</h2>
<table class = "table" border="3">
    <tr>
        <th>1) Номер заказа, имя товара, цена, количество, имя оператора за которым числится заказ ,ГДЕ количество
            товара > 2 И id оператора 10 ИЛИ 12</th>
        <th><button class="btn" id ="request_1">Выполнить</button></th>
    </tr>
    <tr>
        <th>2) Имя товара, количество товара, и сумма (price) по каждому товару (сгруппировать)</th>
        <th><button class="btn" id ="request_2">Выполнить</button></th>
    </tr>
</table>
<button class="btn" id ="request_3">Обнулить</button>
<hr>
<div id="result"></div>
</body>
</html>

