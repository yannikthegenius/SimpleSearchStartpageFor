#!/usr/bin/bash
rm -r -f dist/Firefox
7za a -tzip dist/Firefox/SimpleSearchGoogleFor.zip @package-firefox.txt

rm -r -f dist/Chrome
7za.exe a -tzip dist/Chrome/SimpleSearchGoogleFor.zip @package-chrome.txt
7za rn dist/Chrome/SimpleSearchGoogleFor.zip manifest-chrome.json manifest.json
7za rn dist/Chrome/SimpleSearchGoogleFor.zip src/background-chrome.js src/background.js
7za rn dist/Chrome/SimpleSearchGoogleFor.zip src/icons/icon-128-chrome.png src/icons/icon-128.png
7za rn dist/Chrome/SimpleSearchGoogleFor.zip src/icons/icon-16-chrome.png src/icons/icon-16.png
7za rn dist/Chrome/SimpleSearchGoogleFor.zip src/icons/icon-48-chrome.png src/icons/icon-48.png
