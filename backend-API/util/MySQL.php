<?php
    class MySQL {
        private string $host     = "localhost";
        private string $user     = "root";
        private string $password = "";
        private string $database = "dog_shelter";

        private mysqli $conn;

        /////////////////////////////////////////////////////
        /// Constructor
        public function __construct() {
            $this->conn = new mysqli($this->host, $this->user, $this->password, $this->database) or
                            die("Connection failed: " . $this->conn->connect_error);

            $this->conn->set_charset("utf8");
        }

        /// Destructor
        public function __destruct() {
            $this->conn->close();
        }
        /////////////////////////////////////////////////////

        /// Get data from database
        public function get_data($query): array|bool {
            $data = array();

            try {
                $result = $this->conn->query($query);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $data[] = $row;
                    }
                }
            } catch (Exception) {
                // echo "Error: " . $e->getMessage();
                return false;
            }

            return $data;
        }
    }
