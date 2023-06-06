<!doctype html>
<html lang="en,lv">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Ģerbonis,Latvija,novadi,minēšana,spēle,vārdi,name,PHP,HTML,Bootstrap">
    <title>Zinīble</title>
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

        .image-container {
            display: inline-block;
            width: 40%;
            margin-right: 20px;
        }

        .covered-image {
            position: relative;
            width: 100%;
        }

        .covered-image::before {
            content: "";
            display: block;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 90%;
            background-color: white;
            z-index: 1;
        }

        .input-container {
            display: inline-block;
            width: 40%;
            vertical-align: top;
        }

        .result-container {
            margin-top: 20px;
            text-align: center;
        }

        .message-container {
            margin-top: 20px;
        }
    </style>
    
</head>
<body>
    <a href="index.php">
        <h1>Zinīble</h1>
    </a>
    <h2>Ģerboņu minēšanas spēle</h2>
    <br>
    <br>
    <h2 style="text-align:center;">Pilsetas gērboņi</h2>
    <br>
    <div class="container">
        <div class="row">
            <div class="image-container">
                <?php
                require 'connection.php';

                $query = "SELECT * FROM pilsetas";
                $result = $pdo->query($query);

                $rowCount = $result->rowCount();
                if ($rowCount == 0) {
                    echo "Tabula ir tukša";
                } else {
                    // Generate a random number within the range of IDs
                    $randomId = rand(1, $rowCount);

                    // Retrieve the row with the random ID
                    $query = "SELECT * FROM pilsetas WHERE id = :randomId";
                    $stmt = $pdo->prepare($query);
                    $stmt->bindParam(':randomId', $randomId);
                    $stmt->execute();

                    $row = $stmt->fetch(PDO::FETCH_ASSOC);

                    echo '<div class="covered-image">';
                    echo '<img src="' . $row['path'] . '" class="img-fluid" alt="' . $row['name'] . '">';
                    echo '</div>';
                    echo '<p style="font-size:20px;text-align:center;">' . $row['name'] . '</p>';
                }
                ?>
            </div>
            <div class="input-container">
                <div class="container mt-5">
                    <br> 
                    <br>
                    <div class="message-container" id="result"></div>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="" aria-describedby="button" id="inputText">
                        <button class="btn btn-outline-secondary" type="button" id="button">Pārbaudīt</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        var revealPercentage = 15;
        var totalRevealed = 0;

        document.getElementById("button").addEventListener("click", function () {
    var inputText = document.getElementById("inputText").value;
    var answer = '<?php echo $row["name"]; ?>';

    if (inputText.trim() === "") {
        document.getElementById("result").innerHTML = '<div class="alert alert-danger">Lūdzu, ievadiet atbildi!</div>';
        return;
    }

    // Remove any existing error messages
    document.getElementById("result").innerHTML = "";

    if (inputText.toLowerCase() === answer.toLowerCase()) {
                document.getElementById("result").innerHTML = '<div class="alert alert-success">Pareizi!</div>';
                document.querySelector('.covered-image').style.height = '0';

                var button = document.createElement("button");
                button.classList.add("btn", "btn-primary");
                button.textContent = "Nākamais";
                button.onclick = function () {
                    location.reload();
                };
                document.querySelector('.input-container').appendChild(button);
                document.getElementById("button").disabled = true;
            } else {
                totalRevealed += revealPercentage;
                if (totalRevealed > 90) {
                    totalRevealed = 90;
                }
                document.querySelector('.covered-image').style.height = (90 - totalRevealed) + "%";

                if (totalRevealed === 90) {
                    document.getElementById("button").disabled = true;
                    var nextButton = document.createElement("button");
                    nextButton.classList.add("btn", "btn-primary");
                    nextButton.textContent = "Nākamais";
                    nextButton.onclick = function () {
                        location.reload();
                    };
                    document.querySelector('.input-container').appendChild(nextButton);

                    var message = document.createElement("div");
                    message.classList.add("alert", "alert-danger");
                    message.textContent = 'Nepareizi! Pareizais atbildes variants ir: ' + answer;
                    document.querySelector('.message-container').appendChild(message);
                }
            }
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
