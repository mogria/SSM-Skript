#!/usr/bin/env nix-shell
#!nix-shell -p discount -p pandoc wkhtmltopdf -i bash

markdown -f +githubtags -f +style -f +html ./Service_Operation_Prozesse.markdown > ./Service_Operation_Prozesse_Content.html

cat > Service_Operation_Prozesse.html <<'HTML'
<!DOCTYPE html><html><head><meta encoding="utf-8">
<style>
body {
    font-family: "Droid Sans", Arial, sans-serif;
    padding: 0px;
    margin: 0px;
}
</style>
</head>
<body>
HTML

cat Service_Operation_Prozesse_Content.html >> Service_Operation_Prozesse.html

echo "</body></html>" >> Service_Operation_Prozesse.html

pandoc -o ./Service_Operation_Prozesse.pdf Service_Operation_Prozesse.markdown
exit
wkhtmltopdf --version
wkhtmltopdf --dpi 300 -s A4 \
    --header-line --header-left "SSM" \
    --header-right "Elia Griffo, Moritz Küttel" \
    --footer-left "test" \
    -B 1.5cm -T 2cm -L 2.5cm -R 1.5cm \
    ./Service_Operation_Prozesse.html Service_Operation_Prozesse.pdf
