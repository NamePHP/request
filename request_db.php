<?php
require_once 'db.php';
$request = intval(($_POST['type']));
$result='';

function doTable(array $columnName,array $dataArray)
{
    $table="<table class='table' border='3'><thead><tr>";
    // шапка для результирующей таблицы
    foreach ($columnName as $th)
    {
        $table.="<th>{$th}</th>";
    }
    $table.="</tr></thead><tbody>";
    // тело таблицы
    foreach ($dataArray as $items )
    {
        $table.="<tr>";
        foreach ($items as $item)
        {
            $table.="<td>{$item}</td>";
        }
        $table.="</tr>";
    }
    return $table.=" </tbody></table>";
}

if( $request == 1){
    $stmt = $pdo->query("SELECT r.id, off.name, r.price, r.counts,op.fio
FROM requests r
         LEFT JOIN offers off ON r.offer_id = off.id
        LEFT JOIN operator op ON r.operator_id = op.id
WHERE r.counts > 2 AND (r.operator_id = 10 OR r.operator_id = 12)");
    $rows = $stmt->fetchAll();
    $result = doTable(['№ заказа','Имя товара','Цена товара','Количество','ФИО менеджера'],$rows);

}elseif ($request == 2){
    $stmt = $pdo->query("SELECT off.name, r.counts,SUM(r.price*r.counts) AS Sums
FROM requests r
         LEFT JOIN offers off ON r.offer_id = off.id
GROUP BY off.id");
    $rows = $stmt->fetchAll();
    $result = doTable(['Имя товара', 'Количество','сумма (сгруппирирована)'],$rows);
}elseif ($request == 3){
    $result ='';
}
die($result);

