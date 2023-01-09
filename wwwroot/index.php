<!DOCTYPE html>
<?php
$title = "🐙 PHP-on-Docker 🐙";
?>
<html lang="ja">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title><?php echo $title; ?></title>
  <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
</head>
<body>
  <h1><?php echo $title; ?></h1>
  <?php
  $comment = "Hello, PHP-on-Docker 🐙🐙🐙!";
  for ($i = 0; $i < 3; $i++) {
    echo "<p>$comment</p>";
  }
  ?>
</body>
</html>
