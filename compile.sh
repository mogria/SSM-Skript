#!/usr/bin/env nix-shell
#!nix-shell -p discount -p pandoc -i bash

pandoc --pdf-engine=xelatex -o ./Service_Operation_Prozesse.pdf Service_Operation_Prozesse.markdown
