#!/usr/bin/env nix-shell
#!nix-shell -p discount wkhtmltopdf -i bash

markdown -f +githubtags -S ./Service_Operation_Prozesse.markdown > ./Service_Operation_Prozesse.html
wkhtmltopdf -s A4 ./Service_Operation_Prozesse.html Service_Operation_Prozesse.pdf
