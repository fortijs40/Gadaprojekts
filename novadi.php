<div class="container mt-5" >
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/COA_LV_Valmiera.svg/86px-COA_LV_Valmiera.svg.png" class="img-fluid" id="gerbonis" alt="valmierasģērbonis">
    <div class="input-group mb-3">
        <button class="btn btn-outline-secondary" type="button" id="button">Button</button>
        <input type="text" class="form-control" placeholder="" aria-describedby="button">
    </div>
  </div>
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