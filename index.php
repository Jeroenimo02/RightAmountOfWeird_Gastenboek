<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RAOW Gastenboek</title>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@400;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="title">Gastenboek</div>

<form method="post" name="commentform" class="commentform">
    <div class="form-group">
    <div class="input-group">
    <label>Naam</label>
    <input type="text" class="fullname_input" name="fullname_input" placeholder=" " required>
    </div>
    <div class="input-group">
    <label>E-mailadres</label>
    <input type="email" class="email_input" name="email_input" placeholder=" " required>
    </div>
    </div>
    <div class="form-group">
    <div class="input-group">
    <label>Bericht</label>
    <textarea type="text" class="message_input" name="message_input" placeholder=" " required></textarea>
    </div>
    </div>
    <div class="form-group">
    <button type="submit" name="submit" class="submitbutton">Verstuur</button>
    </div>
</form>

<?php

include "classes/Comments.php";
$Comments = new Comments();

//Execute when comment is written
if (isset ($_POST["submit"]) && (!empty($_POST["fullname_input"])) && (!empty($_POST["email_input"])) && (!empty($_POST["message_input"])) ) {

    $Comments->createComment($_POST["fullname_input"], $_POST["email_input"], $_POST["message_input"]);

    echo '<div class="succes">Bericht is succesvol geplaatst</div>';

} else if (isset ($_POST["submit"]) && (empty($_POST["fullname_input"])) && (!empty($_POST["email_input"])) && (!empty($_POST["message_input"])) ) {
    echo '<div class="failed">Fout! Controlleer of alle velden zijn ingevuld</div>';
}


?>

<div class="comments">

<?php

$AllComments = $Comments->getAllComments();
//Get all comments
foreach ($AllComments as $comment) {

    $date = strtotime($comment['date']);

    echo '<div class="comment">';
    echo '<div class="form-group"><div class="fullname">'. $comment['full_name']. '</div>';
    echo '<div class="right"><div class="date">'. date('d F Y', $date). '</div>';
    echo '<div class="email"><a href="mailto:'.$comment['email'].'">Stuur e-mail</a></div></div></div>';
    echo '<div class="message">'. $comment['message']. '</div>';
    echo '</div>';
}

?>

</div>

</body>
</html>