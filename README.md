# Projekt na zaliczenie przedmiotu

## Opis projektu
Projekt ma na celu stworzenie aplikacji webowej, która będzie umożliwiać adoptowanie psów. Aplikacja będzie posiadać bazę danych, w której będą przechowywane informacje o psach, użytkownikach oraz ich adresach. Użytkownik będzie mógł zarejestrować się w aplikacji, a następnie zalogować się. Po zalogowaniu będzie mógł przeglądać psy, które są do adopcji. Będzie mógł również dodać psa do ulubionych, a także zgłosić chęć adopcji. Administrator będzie mógł dodawać psy do bazy danych, a także usuwać je. Będzie mógł również usuwać użytkowników, a także edytować ich dane. Bla bla bla

## Technologie
* PHP 8.3.0
* MySQL 8.0.25
* HTML 5
* CSS 3
* JavaScript
* Bootstrap 5.0.2
* React 17.0.2

## Instalacja i uruchomienie
1. Pobierz projekt na swój komputer.
2. Wejdź w terminala systemu operacyjnego i przejdź do poniższego folderu:
```bash
  cd .../projekttwiap/melon-app/
```
3. Zainstaluj wymagane pakiety wpisując w terminalu:
```bash
  npm install --global yarn
  yarn
  npm install
```
4. W celu upewnienia się że instalacja pakietów została zakończona polacamy zresetowanie komputera. (Opcjonalne)
5. Nastpęnie w celu poprawnego zainicjowania bazy danych należy utworzyć za pomocą xamppa bazę danych o nazwie `dog_shelter` oraz zaimportować do niej plik `dog_shelter.sql`.
6. Katalog `backend-API` należy umieścić w folderze `htdocs` w xamppie.
7. W celu uruchomienia aplikacji należy wpisać w terminalu:
```bash
  npm start
```

## Zakończenie pracy serwera
W celu zakończenia pracy serwera należy wcisnąć kombinację przycisków w terminalu:
```bash
  ctrl + c
```