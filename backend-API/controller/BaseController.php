<?php
    class BaseController {
        private string $endpoint_path;
        private array $allowed_methods;

        // Constructor
        public function __construct($endpoint_path, $allowed_methods_array) {
            header("Access-Control-Allow-Origin: *");
            header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
            header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
            header("Content-Type: application/json");

            $this->endpoint_path   = $endpoint_path;
            $this->allowed_methods = $allowed_methods_array;
        }
        /////////////////////////////////////////////////////////////////////


        // Main entry point for any endpoint
        protected function index(): void {
            http_response_code(501);
            echo json_encode(array("message" => "This endpoint is not implemented yet!"));
        }


        public function getAllowedMethods(): array {
            return $this->allowed_methods;
        }

        public function getEndpointPath(): string {
            return $this->endpoint_path;
        }
    }