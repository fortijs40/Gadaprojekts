<!doctype html>
<html lang="en,lv">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Ģerbonis,Latvija,novadi,minēšana,spēle,vārdi,name,PHP,HTML,Bootstrap">
    <title>Zinible</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  </head>
  <body>
    <h1>Zinīble</h1>
    <h2>Ģerboņu minēšanas spēle</h2>
    <br>
    <br>
    <h3>Izvēlies tematiku</h3>
    <button class="btn btn-outline-secondary" type="button" id="button1">Pilsētas ģerboņi</button>
    <br>
    <button class="btn btn-outline-secondary" type="button" id="button2">Novadu ģerboņi</button>
    <script>
      document.getElementById("button1").addEventListener("click", function() {
        window.location.href = "pilsetas.php";
      });

      document.getElementById("button2").addEventListener("click", function() {
        window.location.href = "novadi.php";
      });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>