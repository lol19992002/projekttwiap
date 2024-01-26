<?php
    require_once "BaseController.php";
    require_once "../util/MySQL.php";

    class IndexController extends BaseController {
        private MySQL $mysql;

        public function __construct() {
            parent::__construct("/", ["GET"]);
            $this->mysql = new MySQL();
        }

        public function index(): void {
            $query = 'SELECT dog.name, dog.age, breed.name as breed, dog.photo_name FROM dog JOIN breed ON breed.breed_id = dog.dog_id';
            $data = $this->mysql->get_data($query);

            if ($data) {
                http_response_code(200);
                echo json_encode($data);
            }
            else {
                http_response_code(204);
                echo json_encode(array(["is_empty" => true, "message" => "No data found."]));
            }
        }
    }
