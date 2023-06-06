

<!doctype html>
<html lang="en,lv">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Ģerbonis,Latvija,novadi,minēšana,spēle,vārdi,name,PHP,HTML,Bootstrap">
    <title>Zinible</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    
    <style>
      h1 {
          background-color: black;
          color: white;
          font-size: 70px;
      }
      body {
          text-align: center;
      }
      .btn {
        margin-top: 10px;
        width: 500px;
        font-size: 30px;
      }

      .btn:hover {
        background-color: gray;
      }
    </style>
    <?php
        require 'connection.php';

        $query = "SELECT * FROM dati";
        $result = $pdo->query($query);
        echo '<h2 style="text-align:center;">Datu bāzes dati</h2><br>';
        if ($result->rowCount() == 0) {
            echo "Tabula ir tukša";
        } else {
            while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
                echo '<p style="font-size:20px;text-align:center;">' . $row['id'] . ". " . $row['vards'] . ' ' . $row['uzvards'] . ' (' . $row['gadi'] . ' gadi)' . '<br></p>';
            }
        }
    ?>
    <div class="container mt-5" >
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/COA_LV_Valmiera.svg/86px-COA_LV_Valmiera.svg.png" class="img-fluid" id="gerbonis" alt="valmierasģērbonis">
        <div class="input-group mb-3">
            <button class="btn btn-outline-secondary" type="button" id="button">Button</button>
            <input type="text" class="form-control" placeholder="" aria-describedby="button">
        </div>
    </div>
  </head>
  <body>
    <h1>Zinīble</h1>
    <h2>Ģerboņu minēšanas spēle</h2>
    <br>
    <br>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>
