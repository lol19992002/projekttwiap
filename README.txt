C:\xampp\apache\conf -> httpd.conf
i pod <Directory "C:/xampp/htdocs"> dopisz
Header set Access-Control-Allow-Origin "http://localhost:3000/"
Header set Access-Control-Allow-Methods "GET, POST, PUT, DELETE, OPTIONS"
Header set Access-Control-Allow-Headers "Origin, X-Requested-With, Content-Type, Accept"


cmd -> jako administrator
cd do folderu z api
npm install --global yarn
yarn
npm install
restart pc 
odapalasz xammp 
utworzyć bazę danych : dog_shelter
zaimportować tam plik dog_shelter_1
przekopiować backend-API do htdocs

wrócić do cmd i uruchomić api: npm start

powinno działać :)




