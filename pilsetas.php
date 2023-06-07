<!doctype html>
<html lang="en,lv">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Ģerbonis,Latvija,novadi,minēšana,spēle,vārdi,name,PHP,HTML,Bootstrap">
    <title>Zinīble</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/smoothness/jquery-ui.css">
</head>
<body>
    <a href="index.php">
        <h1>Zinīble</h1>
    </a>
    <div class="container mt-5 border border-3 rounded-3" style="width: 800px">
        <h2 style="text-align:center;">Pilsētas gerboņi</h2>
        <br>
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
                }
                ?>
            </div>
            <div class="input-container">
                <div class="container mt-5">
                    <div class="message-container" id="result"></div>
                    <div class="input-group mb-3" style="width: 500px; margin-left: auto; margin-right: auto;">
                        <input type="text" class="form-control" placeholder="Pilsētas nosaukums" aria-describedby="button" id="inputText">
                    </div>
                    <div class="input-group mb-3">
                        <button class="btn btn-outline-secondary" type="button" id="button">Pārbaudīt</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        var revealPercentage = 15;
        var totalRevealed = 0;
        var hintShown = false;

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
                document.querySelector('.covered-image').style.height = (75 - totalRevealed) + "%";

                if (totalRevealed == 75 && hintShown === false) {
                    var hintButton = document.createElement("button");
                    hintButton.classList.add("btn", "btn-warning");
                    hintButton.textContent = "Iegūt padomu";
                    hintButton.onclick = function () {
                        var hint = '<?php echo $row["fact"]; ?>';
                        var hintMessage = document.createElement("div");
                        hintMessage.classList.add("alert", "alert-warning");
                        hintMessage.textContent = hint;
                        document.querySelector('.message-container').appendChild(hintMessage);
                        hintButton.remove();
                        hintShown = true;
                    };
                    document.querySelector('.message-container').appendChild(hintButton);
                }
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
        //autocomplete daļa, ja vajag novadiem tad arī var pārlikt un uztaisīt priekš novadiem tur php, idk vai vajadzēja novadiem, cuz tur uzreiz full ģerbonis bija
        $(document).ready(function() {
            $("#inputText").autocomplete({
                source: function(request, response) {
                    $.ajax({
                        url: "autocompleteCit.php",
                        dataType: "json",
                        data: {
                        term: request.term
                        },
                        success: function(data) {
                        response(data);
                        }
                    });
                },
                minLength: 2 // minimum number of characters to trigger autocomplete
            });
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
