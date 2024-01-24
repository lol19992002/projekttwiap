<?php
    require_once "../util/MySQL.php";

    header("Content-Type: application/json; charset=UTF-8");

    $query = 'SELECT dog.name, dog.age, breed.name as breed, dog.photo_name FROM dog JOIN breed ON breed.breed_id = dog.dog_id';
    echo json_encode((new MySQL())->get_data($query));