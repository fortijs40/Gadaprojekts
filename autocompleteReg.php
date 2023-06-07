<?php
require 'connection.php';

if (isset($_GET['term'])) {
  $term = $_GET['term'];
  $query = "SELECT name FROM novadi WHERE name LIKE :term";
  $stmt = $pdo->prepare($query);
  $stmt->bindValue(':term', '%'.$term.'%');
  $stmt->execute();
  $results = array();
  while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $results[] = $row['name'];
  }
  echo json_encode($results);
}
?>