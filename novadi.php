<!doctype html>
<html lang="en,lv">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Ģerbonis,Latvija,novadi,minēšana,spēle,vārdi,name,PHP,HTML,Bootstrap">
    <title>Zinible</title>
    <link rel="stylesheet" href="styles.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/smoothness/jquery-ui.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
  <body>
    <a href="index.php">
        <h1>Zinīble</h1>
    </a>
    <div class="container mt-5 border border-3 rounded-3" >
        <?php
            require 'connection.php';

            $query = "SELECT * FROM novadi ORDER BY RAND() LIMIT 1";
            $result = $pdo->query($query);
            echo '<h2 style="text-align:center;">Kuram novadam ir šis ģerbonis?<br> Uzmini!</h2>';
            if ($result->rowCount() == 0) {
                echo "Tabula ir tukša";
            } else {
                while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
                    #echo '<p style="font-size:20px;text-align:center;">' . $row['id'] .  ' gadi)' . '</p>';
                    echo '<div style="text-align:center;">';
                    echo '<img src="'. $row['path'] .'" class="img-fluid" id="mazaksGerbonis" alt="question"> <br>';
                    echo '</div>';
                    $correctAnswer = $row['name'];
                }
            }
        ?>
        <div class="form-group mb-3 d-flex flex-row justify-content-center ">
            <input type="text" class="form-control w-25" placeholder="Novads, piemēram, Valmieras" aria-describedby="button" id="searchInput">
        </div>
        <div class="form-group mb-3 d-flex flex-row justify-content-center ">
            <button class="btn btn-outline-primary" type="button" id="button" onclick="checkGuess()">Minēt</button>
        </div>
        <div class="modal fade" id="correctAnswerModal" tabindex="-1" role="dialog" aria-labelledby="correctAnswerModalLabel" aria-hidden="true">
            <button aria-hidden="true" type="button" class="btn btn-primary" id="nextButton" data-dismiss="modal">Nākošais</button>
        </div>
        <div id="heartContainer" class="text-center">
            <span class="heart">&hearts;</span>
            <span class="heart">&hearts;</span>
            <span class="heart">&hearts;</span>
            <span class="heart">&hearts;</span>
            <span class="heart">&hearts;</span>
            <strong><p1 id="incorrectMessage" style="display: none;">Nepareizā atbilde</p1></strong>
            <strong><p4 id="incorrectLastMessage" style="display: none;">Diemžēl tu neuzminēji. Pareizā atbilde bija: <p2><?php echo $correctAnswer . ' novads'?></strong></p2>
            <strong><p3 id="correctMessage" style="display: none;">Pareizā atbilde</p3></strong>
        </div>
        <script>
            var hearts = document.getElementsByClassName('heart');
            var remainingAttempts = hearts.length;
            var inputField = document.getElementById('searchInput');
            var correctAnswerDisplay = document.getElementById('correctAnswer');
            var nextButton = document.getElementById('nextButton');
            // Add event listener for the "keypress" event
            var keyPressHandler = function(event) {
                // Check if the Enter key was pressed (key code 13)
                if (event.keyCode === 13) {
                    checkGuess(); // Call the checkGuess() function to handle the guess
                }
            };
            inputField.addEventListener('keypress', keyPressHandler);
            function checkGuess() {
                var guessedAnswer = document.getElementById('searchInput').value;
                // Compare the guessed answer with the correct answer
                var correctAnswer = "<?php echo $correctAnswer; ?>";
                if (guessedAnswer.toLowerCase() === correctAnswer.toLowerCase()) {
                    newButton();
                    incorrectMessage.style.display = 'none';
                    correctMessage.style.display = 'block';
                } else {
                    remainingAttempts--;
                    hearts[remainingAttempts].style.color = 'red';
                    if (remainingAttempts > 0) {
                        incorrectMessage.style.display = 'block';
                    }else{
                        newButton();
                        incorrectLastMessage.style.display = 'block';
                        correctAnswerDisplay.textContent = correctAnswer;
                    }
                }
            }
            function newButton(){
                document.getElementById('button').disabled = true; //THIS SHIT WORKS :)
                inputField.removeEventListener('keypress', keyPressHandler);//THIS SHIT DONT WORK :(
                nextButton.setAttribute('class', 'btn btn-primary');
                nextButton.setAttribute('id', 'nextButton');
                nextButton.textContent = 'Nākošais ģerbonis';
                nextButton.addEventListener('click', function() {
                    location.reload(); // Reload the page to generate a new coat of arms
                });
                document.getElementById('heartContainer').appendChild(nextButton);
            }     
            $(document).ready(function() {
            $("#searchInput").autocomplete({
                source: function(request, response) {
                $.ajax({
                    url: "autocompleteReg.php",
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
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>