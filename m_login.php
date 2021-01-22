<?php

//1. POSTデータ取得
$lid  = $_POST["lid"];
$password = $_POST["password"];


//2. DB接続します
//*** function化する！  *****************
session_start();
//1.  DB接続します
require_once("funcs.php");
$pdo = db_conn1();

$stmt = $pdo->prepare('select * from gs_user_table where lid = ?');
$stmt->execute([$_POST['lid']]);
$row = $stmt->fetch(PDO::FETCH_ASSOC);

//emailがDB内に存在しているか確認
    if (!isset($row['lid'])) {
        echo 'IDかパスワードが間違っています。<br />';
        echo '<a href="m_signUp.php">ログイン画面に戻る</a>';
        return false;
    } 
    else
        if (password_verify($_POST["password"],$row['lpw'])){
            //  session id がチェックできた場合、同じIDを持っていると流用される可能性あるため、すぐにIDを変えて中身を新しいものにする。
            session_regenerate_id(true); //session_idを新しく生成し、置き換える
            $_SESSION["kanri_flg"] = $row['kanri_flg'];
            redirect('k_form.php');

             }
    else {
        echo 'IDかパスワードが間違っています。<br />';
        echo '<a href="m_signUp.php">ログイン画面に戻る</a>';
        return false;
               }
               



?>

