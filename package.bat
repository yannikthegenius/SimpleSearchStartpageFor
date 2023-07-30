@echo off

rmdir /S /Q .\dist\Firefox
.\lib\7za.exe a -tzip .\dist\Firefox\SimpleSearchGoogleFor.zip @package-firefox.txt

:: TODO: Better way of handling this?
rmdir /S /Q .\dist\Chrome
.\lib\7za.exe a -tzip .\dist\Chrome\SimpleSearchGoogleFor.zip @package-chrome.txt
.\lib\7za rn .\dist\Chrome\SimpleSearchGoogleFor.zip manifest-chrome.json manifest.json
.\lib\7za rn .\dist\Chrome\SimpleSearchGoogleFor.zip src\background-chrome.js src\background.js
.\lib\7za rn .\dist\Chrome\SimpleSearchGoogleFor.zip src\icons\icon-128-chrome.png src\icons\icon-128.png
.\lib\7za rn .\dist\Chrome\SimpleSearchGoogleFor.zip src\icons\icon-16-chrome.png src\icons\icon-16.png
.\lib\7za rn .\dist\Chrome\SimpleSearchGoogleFor.zip src\icons\icon-48-chrome.png src\icons\icon-48.png
